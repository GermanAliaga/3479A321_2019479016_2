import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laboratorio/pages/about.dart';

class Detail extends StatelessWidget {
  const Detail(
      {super.key,
      this.color = const Color.fromARGB(255, 231, 241, 223),
      this.child,
      required this.title});

  final Color color;
  final Widget? child;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(this.title),
      ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Volver')),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        About(title: 'Página 2')));
                          },
                          child: const Text('Siguiente')),
                    ],
                  ),
                ])),
      )),
    );
    //floatingActionButton: FloatingActionButton(onPressed: , child: Icon(Icons.icecream));
  }
}
