import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/components/app_bar_components.dart';

class TextViewComponents extends StatelessWidget {
  final String title;

  const TextViewComponents({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome $title\n Lenght: ${title.length}',
            textAlign: TextAlign.center,
            style: FlutterDemoStyles.defaultTextStyle,
          ),
          const Text("test",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: TextStyle(
                  wordSpacing: 2,
                  decoration: TextDecoration.underline,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2,
                  color: Colors.lime,
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
          Text(
            'Style',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
            style: FlutterDemoStyles.defaultTextStyle,
          ),
          Text(
            'Color',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: TextStyle(color: FlutterDemoColors.defaultColor),
          ),
        ],
      )),
    );
  }
}

class FlutterDemoStyles {
  static TextStyle defaultTextStyle = const TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      letterSpacing: 2,
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

class FlutterDemoColors {
  static Color defaultColor = Colors.red;
}
