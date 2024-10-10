import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:laboratorio/pages/about.dart';
import 'package:laboratorio/pages/detail.dart';
import 'package:logger/logger.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String svg = "assets/icons/controller_game_icon.svg";
  String message1 = 'Jugar';
  String message2 = 'Cantidad de cliks';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounter() {
    setState(() {
      _counter--;
    });
  }

  void _restartCounter() {
    setState(() {
      _counter = 0;
      message1 = 'Jugar';
      svg = "assets/icons/restart_icon.svg";
    });
  }

  void _messageChange() {
    if (_counter == 5) {
      message1 = 'Derrota';
      svg = "assets/icons/game_over_icon.svg";
    } else if (_counter == 10) {
      message1 = 'Victoria';
      svg = "assets/icons/victory_icon.svg";
    }
  }

  @override
  Widget build(BuildContext context) {
    _messageChange();

    var logger = Logger();
    logger.d("Dentro de _MyHomePageState");

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(5.0),
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
                title: const Text('Detalles'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Detail()));
                },
              ),
              ListTile(
                title: const Text('Sobre'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
              )
            ],
          ),
        ),
        body: Center(
            child: Card(
          elevation: 20,
          color: const Color.fromARGB(255, 243, 233, 233),
          child: SizedBox(
            width: 300,
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    svg,
                    semanticsLabel: 'Game logo',
                    width: 70,
                  ),
                  AutoSizeText(
                    message1,
                    style: TextStyle(fontSize: 50),
                    maxLines: 2,
                  ),
                  Text(
                    message2,
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: _decreaseCounter,
                          child: const Icon(Icons.remove)),
                      ElevatedButton(
                          onPressed: _incrementCounter,
                          child: const Icon(Icons.add)),
                      ElevatedButton(
                          onPressed: _restartCounter,
                          child: const Icon(Icons.restart_alt)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )));
  }
}


 /*       body: Center(
            child: Card(
          elevation: 20,
          color: const Color.fromARGB(255, 243, 233, 233),
          child: SizedBox(
            width: 300,
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    svg,
                    semanticsLabel: 'Game logo',
                    width: 70,
                  ),
                  AutoSizeText(
                    message1,
                    style: TextStyle(fontSize: 50),
                    maxLines: 2,
                  ),
                  Text(
                    message2,
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: _decreaseCounter,
                          child: const Icon(Icons.remove)),
                      ElevatedButton(
                          onPressed: _incrementCounter,
                          child: const Icon(Icons.add)),
                      ElevatedButton(
                          onPressed: _restartCounter,
                          child: const Icon(Icons.restart_alt)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )),*/