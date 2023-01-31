import 'package:conan/widget/button/navigation/navigationWithDescriptionWidget.dart';
import 'package:flutter/material.dart';

class TalentJourneymanAboutWidget extends StatelessWidget {
  const TalentJourneymanAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/journeymanMasonIcon.png',
            label: 'Pedreiro',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/journeymanStairMakerIcon.png',
            label: 'Escadaria',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/journeymanRooferIcon.png',
            label: 'Telhado',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/journeymanFencemakerIcon.png',
            label: 'Cercas',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/journeymanGateIcon.png',
            label: 'Portões',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/journeymanHatchmakerIcon.png',
            label: 'Portinhola',
            isSelected: false,
            callback: () => print('object'),
          ),
        ],
      ),
    );
  }
}