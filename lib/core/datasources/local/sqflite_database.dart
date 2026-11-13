import 'package:drosak/core/datasources/local/db_constants.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteDatabase {
  SqfliteDatabase._internal();

  static final SqfliteDatabase instance = SqfliteDatabase._internal();

  Future<Database>? _database;

  // 4. Database getter
  Future<Database> get database {
    _database ??= _initDatabase();
    return _database!;
  }

  // 5. Initialize database
  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();

    final path = join(dbPath, DbConstants.dbName);

    return await openDatabase(
      path,
      version: DbConstants.dbVersion,
      onCreate: _onCreate,
      onUpgrade: _onUpgrde,
    );
  }

  Future<void> _onUpgrde(Database db, int oldVersion, int newVersion) async {}

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        email TEXT NOT NULL
      )
    ''');
  }

  // CREATE
  Future<int> insert(String tableName, Map<String, Object?> values) async {
    final db = await database;
    return await db.insert(tableName, values);
  }

  // GET
  Future<List<Map<String, dynamic>>> getAll(String tableName) async {
    final db = await database;
    return db.query(tableName);
  }

  // UPDATE
  Future<int> update(
    String tableName,
    Map<String, Object?> values,
    String? where,
    List<Object?>? whereArgs,
  ) async {
    final db = await database;
    return await db.update(
      tableName,
      values,
      where: where,
      whereArgs: whereArgs,
    );
  }

  // DELETE
  Future<int> delete(
    String tableName,
    String? where,
    List<Object?>? whereArgs,
  ) async {
    final db = await database;
    return await db.delete(tableName, where: where, whereArgs: whereArgs);
  }
}
