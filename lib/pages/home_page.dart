import 'package:flutter/material.dart';
import 'package:flutter_learning/model/button.dart';
import 'package:flutter_learning/pages/components/button_components.dart';
import 'package:flutter_learning/pages/components/container_sized_box_components.dart';
import 'package:flutter_learning/pages/components/scaffold_components.dart';
import 'package:flutter_learning/pages/components/text_view_components.dart';
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
      body: Center(
        child: ButtonGrid(),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class ButtonGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<ButtonModel> buttons = [
      ButtonModel(
        text: 'Text',
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TextViewComponents(title: 'Text View Components')),
          );
        },
      ),
      ButtonModel(
        text: 'Container Sized Box',
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ContainerSizedBoxComponents(title: 'Container Sized Box')),
          );
        },
      ),
      ButtonModel(
        text: 'Scaffold',
        backgroundColor: Colors.red,
        onPressed: () {
         Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ScaffoldComponents(title: 'Scaffold')),
          );
        },
      ),
      ButtonModel(
        text: 'Button',
        backgroundColor: Colors.cyan,
        onPressed: () {
         Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ButtonComponents(title: 'Button')),
          );
        },
      )
    ];

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
      ),
      itemCount: buttons.length,
      itemBuilder: (context, index) {
        final button = buttons[index];
        return Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
          child: ElevatedButton(
            onPressed: button.onPressed,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: button.backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(button.text),
          ),
        );
      },
    );
  }
}