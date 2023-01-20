import 'package:conan/model/ScreenEnum.dart';
import 'package:conan/screen/home/homeScreen.dart';
import 'package:flutter/material.dart';

class Conan {
  void goToScreen(BuildContext context, ScreenEnum screenEnum) {
    switch (screenEnum) {
      case ScreenEnum.HomeScreen:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      default:
    }
  }
}
