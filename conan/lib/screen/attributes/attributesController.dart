import 'package:conan/model/ScreenEnum.dart';
import 'package:conan/model/conan.dart';
import 'package:conan/widget/attributesWidgets/attributesAboutWidget.dart';
import 'package:conan/widget/attributesWidgets/attributesEvolutionWidget.dart';
import 'package:conan/widget/attributesWidgets/attributesHomeWidget.dart';
import 'package:flutter/material.dart';

class AttributesController {
  late Conan conan = Conan();
  late int currentIndex;
  late List<Widget> widgets;

  AttributesController() {
    conan = Conan();
    currentIndex = 0;

    fillWidgets();
  }

  fillWidgets() {
    widgets = [];
    widgets.add(const AttributesHomeWidget());
    widgets.add(const AttributesAboutWidget());
    widgets.add(const AttributesEvolutionWidget());
  }

  void goToBackScreen(BuildContext context) {
    conan.goToScreen(context, ScreenEnum.BackScreen);
  }
}
