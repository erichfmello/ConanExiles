import 'package:conan/model/ScreenEnum.dart';
import 'package:conan/screen/attributes/attributesScreen.dart';
import 'package:conan/screen/home/homeScreen.dart';
import 'package:conan/screen/talents/talentScreen.dart';
import 'package:flutter/material.dart';

class Conan {
  void goToScreen(BuildContext context, ScreenEnum screenEnum) {
    switch (screenEnum) {
      case ScreenEnum.AttributesScreen:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AttributesScreen(),
          ),
        );
        break;
      case ScreenEnum.BackScreen:
        Navigator.pop(context);
        break;
      case ScreenEnum.HomeScreen:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
        break;

      case ScreenEnum.TalentScreen:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TalentScreen(),
          ),
        );
        break;
      default:
    }
  }
}
