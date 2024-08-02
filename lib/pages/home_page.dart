import 'package:flutter/material.dart';
import 'package:flutter_learning/theme/theme_change.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<ThemeChange>(context);
    final isDarkMode = themeChange.themeData.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Flutter Learning"),
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
      ),
      body: const Center(
        child: Text('Body content here'),
      ),
    );
  }
}