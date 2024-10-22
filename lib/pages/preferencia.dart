import 'package:flutter/material.dart';
import 'package:laboratorio/models/appdata.dart';
import 'package:laboratorio/pages/mydrawer.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:logger/logger.dart';

class Preferencia extends StatefulWidget {
  const Preferencia({
    super.key,
  });

  @override
  State<Preferencia> createState() => _PreferenciaState();
}

class _PreferenciaState extends State<Preferencia> {
  late String _userName;
  late num _counter;

  @override
  void initState() {
    super.initState();
    _loadPreferences();
  }

  Future<void> _loadPreferences() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
        _counter = context.read<AppData>().counter;
      });
    } catch (e) {
      print('Error al cargar preferencias: $e');
    }
  }

  Future<void> _savePreferences() async {
    try {
      SharedPreferences prefs = await SharedPreferences
          .getInstance(); // Obtener instancia de SharedPreferences
      // Guardar el estado de las preferencias
      //await prefs.setDouble('valorEstablecido', _counter);
    } catch (e) {
      print('Error al guardar preferencias: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    logger.d("Dentro de Preferencia");

    _counter = context.read<AppData>().counter;

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
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Name *',
                ),
                onSaved: (String? value) {},
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
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
                      _counter = value;
                      context.read<AppData>().messageChanger();
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';
import 'package:laboratorio/models/appdata.dart';
import 'package:laboratorio/pages/mydrawer.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferencia extends StatefulWidget {
  const Preferencia({
    super.key,
  });

  @override
  State<Preferencia> createState() => _PreferenciaState();
}

class _PreferenciaState extends State<Preferencia> {
  List<int> cambios = <int>[];

  late String _userName;
  late num _counter;

  bool _isDarkMode = false;
  bool _notificationsEnabled = true;

  @override
  void initState() {
    super.initState();
    _loadPreferences();
  }

  void _updateUserName(String newName) {
    setState(() {
      _userName = newName;
    });
    _savePreferences();
  }

  Future<void> _savePreferences() async {
    try {
      SharedPreferences prefs = await SharedPreferences
          .getInstance(); // Obtener instancia de SharedPreferences
      // Guardar el estado de las preferencias
      await prefs.setBool('isDarkMode', _isDarkMode);
      await prefs.setBool('notificationsEnabled', _notificationsEnabled);
    } catch (e) {
      print('Error al guardar preferencias: $e'); // Manejo de errores
    }
  }

  Future<void> _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _userName = prefs.getString('userName') ?? '';
      _counter = prefs.getInt('counter') ?? 0;
      print('Counter value $_counter is loaded');
      print('Username value $_userName is loaded');
    });
  }

  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    logger.d("Dentro de Preferencia");

    _counter = context.read<AppData>().counter;

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
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Name *',
                ),
                onSaved: (String? value) {},
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
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
                      context.read<AppData>().messageChanger();
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
*/