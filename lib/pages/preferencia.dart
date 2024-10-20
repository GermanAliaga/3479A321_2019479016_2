import 'package:flutter/material.dart';
import 'package:laboratorio/models/appdata.dart';
import 'package:laboratorio/pages/mydrawer.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

class Preferencia extends StatefulWidget {
  const Preferencia({
    super.key,
  });

  @override
  State<Preferencia> createState() => _PreferenciaState();
}

class _PreferenciaState extends State<Preferencia> {
  List<int> cambios = <int>[];

  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    logger.d("Dentro de Preferencia");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Preferencia'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Título',
                style: TextStyle(fontSize: 30),
              ),
              TextFormField(),
              Text(
                'Título',
                style: TextStyle(fontSize: 30),
              ),
              Slider(
                  value: context.read<AppData>().counter,
                  max: 100,
                  divisions: 100,
                  label: context.read<AppData>().counter.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      context.read<AppData>().counter = value;
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
