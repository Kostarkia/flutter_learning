import 'package:flutter/material.dart';

class ContainerSizedBoxComponents extends StatelessWidget {
  final String title;

  const ContainerSizedBoxComponents({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: SingleChildScrollView(
          // Scrollview using
          child: Center(
              child: Column(
            children: [
              //sizedbox using -> margin and padding undefined
              SizedBox(
                width: 100,
                height: 100,
                child: Container(color: Colors.cyan),
              ),
              const SizedBox.shrink(),
              SizedBox.square(
                dimension: 50,
                child: Container(color: Colors.red),
              ),
              Container(
                  height: 200,
                  constraints: const BoxConstraints(
                      maxHeight: 100, maxWidth: 100, minWidth: 50),
                  padding: const EdgeInsets.all(10), //Container padding
                  margin: const EdgeInsets.all(100), //Container margin
                  decoration:
                      CardUtility.boxDecoration, //Can be used for responsive?
                  child: Text('0' * 10000))
            ],
          )),
        ));
  }
}

class CardUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10), // radius using
      // color: Colors.red,
      gradient: const LinearGradient(
          colors: [Colors.white60, Colors.orange]), // gradient using
      boxShadow: const [
        BoxShadow(color: Colors.red, offset: Offset(0.1, 1), blurRadius: 25.4)
      ], //boxShadow using
      border: Border.all(width: 5, color: Colors.blueAccent));
}

class CardConteainerDecoration extends BoxDecoration {
  CardConteainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10), // radius using
            // color: Colors.red,
            gradient: const LinearGradient(
                colors: [Colors.white60, Colors.orange]), // gradient using
            boxShadow: const [
              BoxShadow(
                  color: Colors.red, offset: Offset(0.1, 1), blurRadius: 25.4)
            ], //boxShadow using
            border: Border.all(width: 5, color: Colors.blueAccent));
}
