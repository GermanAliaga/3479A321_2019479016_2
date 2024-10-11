import 'package:flutter/material.dart';
import 'package:laboratorio/pages/mydrawer.dart';
import 'package:logger/logger.dart';

class About extends StatelessWidget {
  const About({
    super.key,
    this.color = const Color.fromARGB(255, 241, 223, 223),
    this.child,
  });

  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    logger.d("Dentro de About");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Sobre'),
      ),
      drawer: MyDrawer(),
      body: Center(
          child: Card(
        elevation: 20,
        color: Color.fromRGBO(243, 233, 233, 1),
        child: SizedBox(
            width: 300,
            height: 300,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Mi nombre es Germán'),
                ])),
      )),
    );
  }
}
