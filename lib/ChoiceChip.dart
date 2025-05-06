import 'package:flutter/material.dart';

class ChipChoice extends StatefulWidget {
  const ChipChoice({Key? key}) : super(key: key);

  @override
  State<ChipChoice> createState() => _ChipChoiceState();
}

class _ChipChoiceState extends State<ChipChoice> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Choice Chip",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: ChoiceChip(
            avatar: const Icon(Icons.ac_unit),
            label: const Text('Choice Chip'),
            selected: _isSelected,
            onSelected: (newBoolValue) {
              setState(() {
                _isSelected = newBoolValue;
              });
            },
          ),
        ));
  }
}
