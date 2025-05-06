import 'package:flutter/material.dart';

class AppBarra extends StatelessWidget {
  const AppBarra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        elevation: 0,
        title: const Text("A P P B A R"),
        // left positioned
        leading: IconButton(
          onPressed: () => {Navigator.pop(context)},
          icon: const Icon(Icons.menu),
        ),
        // right positioned
        actions: [
          IconButton(
            onPressed: () => {
              // do something
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
