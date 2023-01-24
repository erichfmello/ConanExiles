import 'package:conan/model/ScreenEnum.dart';
import 'package:conan/model/conan.dart';
import 'package:conan/widget/attributes/attributesAboutWidget.dart';
import 'package:conan/widget/attributes/attributesEvolutionWidget.dart';
import 'package:conan/widget/attributes/attributesHomeWidget.dart';
import 'package:flutter/material.dart';

class AttributesController {
  late Conan conan = Conan();
  late int currentIndex;
  late int currentIndexAttributesType;
  late int currentIndexLevel;
  late List<Widget> widgets;

  AttributesController() {
    conan = Conan();
    currentIndex = 0;
    currentIndexAttributesType = 0;
    currentIndexLevel = 0;

    fillWidgets();
  }

  fillWidgets() {
    widgets = [];
    widgets.add(const AttributesHomeWidget());
    widgets.add(const AttributesAboutWidget());
    widgets.add(AttributesEvolutionWidget(
      controller: this,
    ));
  }

  void changeCurrentIndexAttributesType(int index) {
    currentIndexAttributesType = index;
    currentIndexLevel = 0;
  }

  void changeCurrentIndexLevel(int index) {
    currentIndexLevel = index;
  }

  void goToBackScreen(BuildContext context) {
    conan.goToScreen(context, ScreenEnum.BackScreen);
  }
}
