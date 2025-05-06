import 'package:deleonrutas/Clipoval.dart';
import 'package:deleonrutas/Material.dart';
import 'package:flutter/material.dart';
import 'package:deleonrutas/Index.dart';
import 'package:deleonrutas/Pageview.dart';
import 'package:deleonrutas/AppBar.dart';
import 'package:deleonrutas/FloatingActionButton.dart';
import 'package:deleonrutas/ChoiceChip.dart';
import 'package:deleonrutas/Checkboxlist.dart';
import 'package:deleonrutas/Pageroute.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre Paginas Routes",
      initialRoute: '/',
      routes: {
        '/': (context) => const Index(),
        '/appbar': (context) => const AppBarra(),
        '/pageview': (context) => VerPagina(),
        '/floatingactionbutton': (context) => BotonAccionFlotante(),
        '/clipoval': (context) => OvalClip(),
        '/material': (context) => MaterialJaja(),
        '/choicechip': (context) => ChipChoice(),
        '/checkboxlist': (context) => ListaCheck(),
        '/pageroute': (context) => RutaPagina()
      },
    );
  }
}
