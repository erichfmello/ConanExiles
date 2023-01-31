import 'package:conan/widget/button/navigation/navigationWithDescriptionWidget.dart';
import 'package:flutter/material.dart';

class TalentDecorationWidget extends StatelessWidget {
  const TalentDecorationWidget({super.key});

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
            isSelected: true,
            callback: () => print('001'),
          ),
        ],
      ),
    );
  }
}