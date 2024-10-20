import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laboratorio/models/appdata.dart';
import 'package:laboratorio/pages/mydrawer.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

class Detail extends StatelessWidget {
  const Detail({
    super.key,
    this.color = const Color.fromARGB(255, 231, 241, 223),
    this.child,
  });

  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    logger.d("Dentro de Detail");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Detalles'),
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
                  SvgPicture.asset(
                    "assets/icons/controller_game_icon.svg",
                    semanticsLabel: 'Game logo',
                    width: 70,
                  ),
                  Text(
                    '${context.read<AppData>().counter.round()}',
                    style: const TextStyle(fontSize: 30),
                  )
                ])),
      )),
    );
  }
}
