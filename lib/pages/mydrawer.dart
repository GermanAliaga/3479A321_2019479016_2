import 'package:flutter/material.dart';
import 'package:laboratorio/models/appdata.dart';
import 'package:laboratorio/pages/about.dart';
import 'package:laboratorio/pages/auditoria.dart';
import 'package:laboratorio/pages/detail.dart';
import 'package:laboratorio/pages/myhomepage.dart';
import 'package:laboratorio/pages/preferencia.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 125,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(148, 255, 150, 150),
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          ListTile(
            title: const Text('Contador'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()));
              context.read<AppData>().actions.add('Dentro de Contador');
            },
          ),
          ListTile(
            title: const Text('Detalles'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Detail()));
              context.read<AppData>().actions.add('Dentro de Detalles');
            },
          ),
          ListTile(
            title: const Text('Sobre'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const About()));
              context.read<AppData>().actions.add('Dentro de Sobre');
            },
          ),
          ListTile(
            title: const Text('Auditoria'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Auditoria()));
              context.read<AppData>().actions.add('Dentro de Auditoria');
            },
          ),
          ListTile(
            title: const Text('Preferencia'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Preferencia()));
              context.read<AppData>().actions.add('Dentro de Preferencia');
            },
          )
        ],
      ),
    );
  }
}
