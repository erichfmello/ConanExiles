import 'package:conan/screen/talents/talentController.dart';
import 'package:conan/theme/color/colorTheme.dart';
import 'package:conan/theme/text/textStyle.dart';
import 'package:conan/widget/button/navigation/navigationWithDescriptionWidget.dart';
import 'package:conan/widget/talents/decoration/talentDecorationWidget.dart';
import 'package:conan/widget/talents/talentApprenticeAboutWidget.dart';
import 'package:conan/widget/talents/talentContructionWidget.dart';
import 'package:flutter/material.dart';

class TalentsCategoryWidget extends StatefulWidget {
  final TalentController controller;

  const TalentsCategoryWidget({super.key, required this.controller});

  @override
  State<TalentsCategoryWidget> createState() => _TalentsCategoryWidgetState();
}

class _TalentsCategoryWidgetState extends State<TalentsCategoryWidget> {
  void changeCategoryIndex(int index) {
    setState(() {
      widget.controller.categoryIndex = index;
      widget.controller.tierIndex = 0;
    });
  }

  void changeTierIndex(int index) {
    setState(() {
      widget.controller.tierIndex = index;
    });
  }

  Widget talentGet() {
    return TalentContructionWidget(
      controller: widget.controller,
      callback: changeTierIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 16,
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 96,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                NavigationWithDescriptionWidget(
                  iconUrl: 'lib/assest/constructionIcon.png',
                  label: 'Construção',
                  isSelected:
                      widget.controller.categoryIndex == 0 ? true : false,
                  callback: () => changeCategoryIndex(0),
                ),
                NavigationWithDescriptionWidget(
                  iconUrl: 'lib/assest/decorationIcon.png',
                  label: 'Decoração',
                  isSelected:
                      widget.controller.categoryIndex == 1 ? true : false,
                  callback: () => changeCategoryIndex(1),
                ),
                NavigationWithDescriptionWidget(
                  iconUrl: 'lib/assest/survivalIcon.png',
                  label: 'Sobrevivência',
                  isSelected:
                      widget.controller.categoryIndex == 2 ? true : false,
                  callback: () => changeCategoryIndex(2),
                ),
                NavigationWithDescriptionWidget(
                  iconUrl: 'lib/assest/weaponIcon.png',
                  label: 'Arma',
                  isSelected:
                      widget.controller.categoryIndex == 3 ? true : false,
                  callback: () => changeCategoryIndex(3),
                ),
                NavigationWithDescriptionWidget(
                  iconUrl: 'lib/assest/armorIcon.png',
                  label: 'Armadura',
                  isSelected:
                      widget.controller.categoryIndex == 4 ? true : false,
                  callback: () => changeCategoryIndex(4),
                ),
                NavigationWithDescriptionWidget(
                  iconUrl: 'lib/assest/religionIcon.png',
                  label: 'Religião',
                  isSelected:
                      widget.controller.categoryIndex == 5 ? true : false,
                  callback: () => changeCategoryIndex(5),
                ),
              ],
            ),
          ),
          talentGet(),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
              top: 16,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: PrimaryColor(),
                  width: 3,
                ),
              ),
            ),
            child: Text('Sobre', style: FontH4PrimaryColor()),
          ),
          widget.controller.talentAboutWidgets
              .elementAt(widget.controller.tierIndex),
        ],
      ),
    );
  }
}
