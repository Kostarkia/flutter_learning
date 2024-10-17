import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/components/app_bar_components.dart';

class IconComponents extends StatelessWidget {
  const IconComponents({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.abc),
          Icon(Icons.abc),
          Icon(Icons.abc),
        ],
      )),
    );
  }
}
