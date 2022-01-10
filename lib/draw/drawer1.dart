import 'package:flutter/material.dart';

class DrawerSolicitud extends StatelessWidget {
  const DrawerSolicitud({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //Drawer para crear el menu
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset('assets/images/emergency.png'),
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.dashboard),
            title: const Text('Historial'),
            onTap: () {
             
            },
          ),
          ListTile(
            leading: const Icon(Icons.analytics_rounded),
            title: const Text('Ver Solicitud'),
            onTap: () {
              
            },
          ),
          ListTile(
            leading: const Icon(Icons.event_available_sharp),
            title: const Text('Proceso'),
            onTap: () {
              
            },
          ),
         
          ListTile(
            leading: const Icon(Icons.bedtime_rounded),
            title: const Text('Finalizar Solicitud'),
            onTap: () {
              
            },
          ),
        ],
      ),
    );
  }
}