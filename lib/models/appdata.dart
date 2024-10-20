import 'package:flutter/material.dart';

class AppData extends ChangeNotifier {
  double counter = 0;
  String svg = "assets/icons/controller_game_icon.svg";
  String message1 = 'Jugar';
  String message2 = 'Cantidad de cliks';

  List<String> actions = <String>[];

  void incrementCounter() {
    if (counter < 100) {
      counter++;
    } else {
      counter = 100;
    }

    if (counter >= 5 && counter < 10) {
      message1 = 'Derrota';
      svg = "assets/icons/game_over_icon.svg";
    } else if (counter >= 10) {
      message1 = 'Victoria';
      svg = "assets/icons/victory_icon.svg";
    }
  }

  void decreaseCounter() {
    if (counter > 0) {
      counter--;
    } else {
      counter = 0;
    }

    if (counter >= 5 && counter < 10) {
      message1 = 'Derrota';
      svg = "assets/icons/game_over_icon.svg";
    } else if (counter >= 10) {
      message1 = 'Victoria';
      svg = "assets/icons/victory_icon.svg";
    }
  }

  void restartCounter() {
    counter = 0;
    message1 = 'Jugar';
    svg = "assets/icons/restart_icon.svg";
  }
}
