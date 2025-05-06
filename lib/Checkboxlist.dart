import 'package:flutter/material.dart';

class ListaCheck extends StatefulWidget {
  const ListaCheck({Key? key}) : super(key: key);

  @override
  State<ListaCheck> createState() => _ListaCheckState();
}

class _ListaCheckState extends State<ListaCheck> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Check Box List Tile",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: CheckboxListTile(
            title: const Text('Tiempo de Checkbox List'),
            subtitle: const Text('Subtitulo'),
            value: _isChecked,
            onChanged: (bool? newValue) {
              setState(() {
                _isChecked = newValue;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
            tileColor: Colors.black12,
            activeColor: Colors.yellow,
            checkColor: Colors.pinkAccent,
          ),
        ));
  }
}
