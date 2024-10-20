import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:laboratorio/models/appdata.dart';
import 'package:laboratorio/pages/mydrawer.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    logger.d("Dentro de _MyHomePageState");

    String svg = context.read<AppData>().svg;
    String message = context.read<AppData>().message1;
    double counter = context.read<AppData>().counter;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('My Home Page'),
        ),
        drawer: MyDrawer(),
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
                    message,
                    style: TextStyle(fontSize: 50),
                    maxLines: 2,
                  ),
                  Text(
                    context.read<AppData>().message2,
                  ),
                  Text(
                    '${counter.round()}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: context.read<AppData>().decreaseCounter,
                          child: const Icon(Icons.remove)),
                      ElevatedButton(
                          onPressed: context.read<AppData>().incrementCounter,
                          child: const Icon(Icons.add)),
                      ElevatedButton(
                          onPressed: context.read<AppData>().restartCounter,
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
