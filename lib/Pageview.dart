import 'package:flutter/material.dart';
import 'posts/post_1.dart';
import 'posts/post_2.dart';
import 'posts/post_3.dart';

class VerPagina extends StatelessWidget {
  VerPagina({super.key});
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Page Controller",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: PageView(
          controller: _controller,
          scrollDirection: Axis.vertical,
          children: const [
            MiPost1(),
            MiPost2(),
            MiPost3(),
          ],
        ));
  }
}
