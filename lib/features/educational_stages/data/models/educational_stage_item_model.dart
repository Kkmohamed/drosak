class EducationalStageItemModel {
  final int id;
  final String title;
  final String desc;
  final String image;
  final bool status;

  const EducationalStageItemModel({
    required this.id,
    required this.title,
    required this.desc,
    required this.image,
    this.status = true,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'desc': desc,
      'image': image,
      'status': status,
    };
  }

  factory EducationalStageItemModel.fromMap(Map<String, dynamic> map) {
    return EducationalStageItemModel(
      id: map['id'] as int,
      title: map['title'] as String,
      desc: map['desc'] as String,
      image: map['image'] as String,
      status: map['status'] as bool,
    );
  }
}
