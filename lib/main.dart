import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/home_page.dart';
import 'package:flutter_learning/theme/theme_change.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());//proje başlangıç noktası..
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeChange(),
      child: Consumer<ThemeChange>(
        builder: (context, themeChange, child) {
          return MaterialApp(
            theme: themeChange.themeData,
            home: HomePage(),
          );
        },
      ),
    );
  }
}