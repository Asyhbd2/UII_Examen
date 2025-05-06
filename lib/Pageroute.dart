import 'package:flutter/material.dart';
import 'package:deleonrutas/Bouncypage.dart';

class RutaPagina extends StatelessWidget {
  const RutaPagina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Page Route Builder')),
      body: Center(
        child: MaterialButton(
          color: Colors.deepOrange,
          child: const Text(
            'Second',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(
              context,
              BouncyPageRoute(
                widget: const SecondPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(title: const Text('Segunda Pagina')),
      body: const Center(
        child: Text(
          'Segunda Pagina',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
