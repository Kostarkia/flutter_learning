import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/components/app_bar_components.dart';

class IconComponents extends StatelessWidget {
  IconComponents({super.key, required this.title});
  final String title;
  final IconColors iconColors = IconColors();
  final IconSizes iconSizes = IconSizes();
  final IconTypes iconTypes = IconTypes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.abc, size: iconSizes.small, color: iconColors.dark),
          Icon(Icons.abc, size: iconSizes.medium, color: iconColors.danger),
          Icon(Icons.abc, size: iconSizes.large, color: iconColors.primary),
          Icon(Icons.abc, size: iconSizes.extraLarge, color: iconColors.secondary),
          Icon(iconTypes.homeFilled, size: iconSizes.medium, color: iconColors.danger),
          Icon(iconTypes.homeOutlined, size: iconSizes.large, color: iconColors.primary),
          Icon(iconTypes.homeRounded, size: iconSizes.extraLarge, color: iconColors.secondary)
        ],
      )),
    );
  }
}

class IconSizes {
  final double small = 18;
  final double medium = 24;
  final double large = 32;
  final double extraLarge = 48;
}

class IconColors {
  final Color primary = Colors.blue;
  final Color secondary = Colors.grey;
  final Color danger = Colors.red;
  final Color light = Colors.white;
  final Color dark = Colors.black;
  final Color backStage = Colors.yellow;
}

class IconTypes {
  final IconData homeFilled = Icons.home;
  final IconData homeOutlined = Icons.home_outlined;
  final IconData homeRounded = Icons.home_rounded;
}