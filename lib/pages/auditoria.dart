import 'package:flutter/material.dart';
import 'package:laboratorio/models/appdata.dart';
import 'package:laboratorio/pages/mydrawer.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

class Auditoria extends StatefulWidget {
  const Auditoria({
    super.key,
  });

  @override
  State<Auditoria> createState() => _AuditoriaState();
}

class _AuditoriaState extends State<Auditoria> {
  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    logger.d("Dentro de Auditoria");

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Auditoria'),
        ),
        drawer: MyDrawer(),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: context.read<AppData>().actions.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Color.fromARGB(148, 255, 150, 150),
              child: Center(child: Text('Cambio de pantalla')),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ));
  }
}
