import 'package:conan/model/ScreenEnum.dart';
import 'package:conan/model/conan.dart';
import 'package:conan/widget/talents/talentsHomeWidget.dart';
import 'package:flutter/material.dart';

class TalentController {
  late int currentIndex;
  late Conan conan;

  late List<Widget> widgets;

  TalentController() {
    conan = Conan();
    currentIndex = 0;

    fillWidgets();
  }

  void fillWidgets() {
    widgets = [];
    widgets.add(const TalentsHomeWidget());
  }

  void goToPage(BuildContext context, ScreenEnum screenEnum) {
    conan.goToScreen(context, screenEnum);
  }
}
