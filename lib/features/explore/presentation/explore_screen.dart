import 'package:drosak/features/explore/presentation/widgets/explore_app_bar.dart';
import 'package:drosak/features/explore/presentation/widgets/explore_body.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ExploreBody(), appBar: ExploreAppBar());
  }
}
