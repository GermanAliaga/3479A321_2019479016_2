import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laboratorio/pages/about.dart';
import 'package:laboratorio/pages/mydrawer.dart';
import 'package:logger/logger.dart';

class Auditoria extends StatelessWidget {
  const Auditoria({
    super.key,
    this.color = const Color.fromARGB(255, 231, 241, 223),
    this.child,
  });

  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    logger.d("Dentro de Auditoria");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Auditoria'),
      ),
      body: Center(),
    );
    //floatingActionButton: FloatingActionButton(onPressed: , child: Icon(Icons.icecream));
  }
}
