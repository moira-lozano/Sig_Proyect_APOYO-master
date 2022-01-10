import 'package:flutter/material.dart';
import 'package:sig_proyect/draw/drawer.dart';

class VerDatos extends StatefulWidget {
  VerDatos({Key? key}) : super(key: key);

  @override
  _VerDatosState createState() => _VerDatosState();
}

class _VerDatosState extends State<VerDatos> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(title: const Text('Mis Datos'),
    ),
    drawer: const DrawerApoyo(),
    ),
    );
}
}