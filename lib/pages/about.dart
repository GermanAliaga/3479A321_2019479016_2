import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About(
      {super.key,
      this.color = const Color.fromARGB(255, 241, 223, 223),
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
                  const Text('Mi nombre es Germán'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Volver'))
                    ],
                  ),
                ])),
      )),
    );
  }
}
