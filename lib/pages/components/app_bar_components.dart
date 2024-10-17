import 'package:flutter/material.dart';
import 'package:flutter_learning/theme/theme_change.dart';
import 'package:provider/provider.dart';

PreferredSizeWidget buildAppBar(BuildContext context, String title, {bool? centerStatus}) {
  final themeChange = Provider.of<ThemeChange>(context);
  final isDarkMode = themeChange.themeData.brightness == Brightness.dark;

  return AppBar(
    backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    title: Text(title),
    centerTitle: centerStatus ?? true,
    
    actions: <Widget>[
      IconButton(
        onPressed: () {
          themeChange.toggleTheme(); // Change Theme
        },
        icon: Icon(
          isDarkMode
              ? Icons.settings_brightness_outlined
              : Icons.settings_brightness_rounded, // Change icon according to theme
          size: 35,
        ),
      ),
    ],
  );
}
