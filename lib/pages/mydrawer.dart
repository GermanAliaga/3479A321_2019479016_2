import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:laboratorio/pages/about.dart';
import 'package:laboratorio/pages/auditoria.dart';
import 'package:laboratorio/pages/detail.dart';
import 'package:laboratorio/pages/myhomepage.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 125,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(148, 255, 150, 150),
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
                  MaterialPageRoute(builder: (context) => MyHomePage()));              
              context.read<AppData>().actions[index] = 'Dentro de My Home Page';
            },
          ),
          ListTile(
            title: const Text('Detalles'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Detail()));
            },
          ),
          ListTile(
            title: const Text('Sobre'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            },
          ),
          ListTile(
            title: const Text('Auditoria'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Auditoria()));
            },
          )
        ],
      ),
    );
  }
}
