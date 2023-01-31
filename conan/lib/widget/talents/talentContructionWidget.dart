import 'package:conan/screen/talents/talentController.dart';
import 'package:conan/widget/button/navigation/navigationWithDescriptionWidget.dart';
import 'package:flutter/material.dart';

class TalentContructionWidget extends StatefulWidget {
  final TalentController controller;
  final callback;
  
  const TalentContructionWidget({super.key, required this.controller, this.callback});

  @override
  State<TalentContructionWidget> createState() => _TalentContructionWidgetState();
}

class _TalentContructionWidgetState extends State<TalentContructionWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/apprenticeMasonIcon.png',
            label: 'Aprendiz',
            isSelected: widget.controller.tierIndex == 0 ? true : false,
            callback: () => widget.callback(0),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/journeymanMasonIcon.png',
            label: 'Pedreiro',
            isSelected: widget.controller.tierIndex == 1 ? true : false,
            callback: () => widget.callback(1),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/masterMasonIcon.png',
            label: 'Mestre',
            isSelected: widget.controller.tierIndex == 2 ? true : false,
            callback: () => widget.callback(2),
          ),
        ],
      ),
    );
  }
}
