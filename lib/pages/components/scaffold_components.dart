import 'package:flutter/material.dart';

//You can quickly create a Stateless Widget class using stsl

class ScaffoldComponents extends StatelessWidget {
  final String title;

  const ScaffoldComponents({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: const Center(
        child: Text('Scaffold'),
      ),
      //drawer: Drawer(),
      floatingActionButton: FloatingActionButton(onPressed: () => {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.delete), label: '')
      ]),
    );
  }
}
