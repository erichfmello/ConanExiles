import 'package:conan/widget/button/navigation/navigationWithDescriptionWidget.dart';
import 'package:flutter/material.dart';

class TalentMasterAboutWidget extends StatelessWidget {
  const TalentMasterAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[          
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/masterMasonIcon.png',
            label: 'Mestre',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/masterStairMakerIcon.png',
            label: 'Escadaria',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/masterRooferIcon.png',
            label: 'Telhado',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/masterSiegeCauldronIcon.png',
            label: 'Caldeirão',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/masterFencemakerIcon.png',
            label: 'Cerca',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/masterGateIcon.png',
            label: 'Portão',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/masterHatchmakerIcon.png',
            label: 'Portinhola',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/masterAwningsIcon.png',
            label: 'Toldos',
            isSelected: false,
            callback: () => print('object'),
          ),
        ],
      ),
    );
  }
}