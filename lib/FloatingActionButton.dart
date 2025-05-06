import 'package:flutter/material.dart';

class BotonAccionFlotante extends StatelessWidget {
  const BotonAccionFlotante({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Floating Action Button",
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: FloatingActionButton(
          heroTag: 'body_fab', // ← tag único
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Container(
              height: 60,
              color: Colors.purple,
            ),
          ),
          FloatingActionButton(
            heroTag: 'bottom_fab', // ← otro tag único
            onPressed: () {},
            backgroundColor: Colors.teal,
            child: const Icon(
              Icons.home,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
