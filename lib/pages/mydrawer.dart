import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:laboratorio/pages/about.dart';
import 'package:laboratorio/pages/auditoria.dart';
import 'package:laboratorio/pages/detail.dart';
import 'package:laboratorio/pages/myhomepage.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
            ),
            ListTile(
              title: const Text('Detalles'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Detail()));
              },
            ),
            ListTile(
              title: const Text('Sobre'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
            ),
            ListTile(
              title: const Text('Auditoria'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Auditoria()));
              },
            )
          ],
        ),
      ),
    );
  }
}
