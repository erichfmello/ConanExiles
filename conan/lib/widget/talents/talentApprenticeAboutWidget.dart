import 'package:conan/widget/button/navigation/navigationWithDescriptionWidget.dart';
import 'package:flutter/material.dart';

class TalentApprenticeAboutWidget extends StatelessWidget {
  const TalentApprenticeAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/apprenticeMasonIcon.png',
            label: 'Aprendiz',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/apprenticeStairMakerIcon.png',
            label: 'Escadaria',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/apprenticeRooferIcon.png',
            label: 'Telhado',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/apprenticeFencemakerIcon.png',
            label: 'Cercas',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/strutsIcon.png',
            label: 'Escoras',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/palisadeIcon.png',
            label: 'Paliças',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/apprenticeHatchmakerIcon.png',
            label: 'Portinhola',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/elevatorsIcon.png',
            label: 'Elevador',
            isSelected: false,
            callback: () => print('object'),
          ),
          NavigationWithDescriptionWidget(
            iconUrl: 'lib/assest/engineerIcon.png',
            label: 'Trabuco',
            isSelected: false,
            callback: () => print('object'),
          ),
        ],
      ),
    );
  }
}
