import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/home_page.dart';
import 'package:flutter_learning/theme/theme_change.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeChange(),
    child: MyApp(), //proje başlangıç noktası..
  ));
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<ThemeChange>(context);

    return MaterialApp(
      theme: themeChange.themeData,
      home: HomePage(),
    );
  }
}
