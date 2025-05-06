import 'package:flutter/material.dart';

class OvalClip extends StatelessWidget {
  const OvalClip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Clip Oval",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: ClipOval(
            child: Image.asset(
              'assets/images/marvel_heroes/antman.jpg',
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
