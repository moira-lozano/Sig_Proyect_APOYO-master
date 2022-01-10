import 'package:flutter/material.dart';

import 'draw/drawer1.dart';

class VerSolicitud extends StatefulWidget {
  const VerSolicitud({ Key? key }) : super(key: key);

  @override
  _VerSolicitudState createState() => _VerSolicitudState();
}

class _VerSolicitudState extends State<VerSolicitud> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(title: const Text('Solicitudes'),
    ),
    drawer: const DrawerSolicitud(),
    ),
    );
}
}