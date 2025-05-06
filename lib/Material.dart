import 'package:flutter/material.dart';

class MaterialJaja extends StatelessWidget {
  const MaterialJaja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(title: const Text('Material')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.red,
              textStyle: const TextStyle(color: Colors.white),
              borderRadius: BorderRadius.circular(20.0),
              elevation: 10.0,
              shadowColor: Colors.white,
              child: Container(
                alignment: Alignment.center,
                //color: Colors.yellow,
                height: 150.0,
                width: 150.0,
                child: const Text('Necesito sombra'),
              ),
            ),
            const Material(
              color: Colors.deepOrange,
              elevation: 30.0,
              shadowColor: Colors.blue,
              child: ListTile(
                leading: Text('Yo tambien'),
                trailing: Text('Necesito sombra'),
              ),
            ),
            const Material(
              color: Colors.yellow,
              textStyle: TextStyle(fontSize: 18, color: Colors.black),
              child: Text('Puedo tener sombra yo tambien? '),
            ),
          ],
        ),
      ),
    );
  }
}
