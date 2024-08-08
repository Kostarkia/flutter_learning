import 'package:flutter/material.dart';

class ButtonComponents extends StatelessWidget {
  final String title;

  const ButtonComponents({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: () {}, child: const Text('Save')),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                //Property
                backgroundColor: WidgetStateProperty.resolveWith(
                  (states) {
                    if (states.contains(WidgetState.pressed)) {
                      return Colors.purple.shade600;
                    }

                    return Colors.blue.shade600;
                  },
                ),
                foregroundColor: WidgetStateProperty.all(Colors.white),
              ),
              child: const Text('Save'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: const CircleBorder() // or RoundedRectangleBorder
                  ),
              child: const Text('Save'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.save)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: FloatingActionButton(
                onPressed: () {}, child: const Icon(Icons.save)),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: OutlinedButton(
                onPressed: null,
                child: Text(
                    'Save')), //If the button is given null, it will not be clickable.
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: InkWell(onTap: () {}, child: const Text('Save')),
          ),
          Container(
            height: 10,
            margin: const EdgeInsets.only(top: 10),
            color: Colors.black,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.only(
                    top: 15, bottom: 15, right: 60, left: 60),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))),
            child: Text('Place Bid',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: Colors.white)),
          )
        ],
      )),
    );
  }
}
