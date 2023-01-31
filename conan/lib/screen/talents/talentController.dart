import 'package:conan/model/ScreenEnum.dart';
import 'package:conan/model/conan.dart';
import 'package:conan/widget/talents/decoration/talentDecorationWidget.dart';
import 'package:conan/widget/talents/talentApprenticeAboutWidget.dart';
import 'package:conan/widget/talents/talentContructionWidget.dart';
import 'package:conan/widget/talents/talentJourneymanAboutWidget.dart';
import 'package:conan/widget/talents/talentMasterAboutWidget.dart';
import 'package:conan/widget/talents/talentsCategoryWidget.dart';
import 'package:conan/widget/talents/talentsHomeWidget.dart';
import 'package:flutter/material.dart';

class TalentController {
  late int currentIndex;
  late int categoryIndex;
  late int tierIndex;
  late Conan conan;

  late List<Widget> widgets;
  late List<Widget> talentAboutWidgets;

  TalentController() {
    conan = Conan();
    currentIndex = 0;
    categoryIndex = 0;
    tierIndex = 0;

    fillWidgets();
  }

  void fillWidgets() {
    widgets = [];
    talentAboutWidgets = [];

    widgets.add(const TalentsHomeWidget());
    widgets.add(TalentsCategoryWidget(
      controller: this,
    ));

    talentAboutWidgets.add(const TalentApprenticeAboutWidget());
    talentAboutWidgets.add(const TalentJourneymanAboutWidget());
    talentAboutWidgets.add(const TalentMasterAboutWidget());
  }

  void goToPage(BuildContext context, ScreenEnum screenEnum) {
    conan.goToScreen(context, screenEnum);
  }
}
