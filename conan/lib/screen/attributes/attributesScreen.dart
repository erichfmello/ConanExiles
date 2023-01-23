import 'package:conan/screen/attributes/attributesController.dart';
import 'package:conan/theme/color/colorTheme.dart';
import 'package:conan/theme/text/textStyle.dart';
import 'package:conan/widget/appBar/AppBarWidget.dart';
import 'package:conan/widget/attributesWidgets/attributesHomeWidget.dart';
import 'package:conan/widget/background/backgroundWidget.dart';
import 'package:conan/widget/bottomNavigationBarItem/BottomNavigationBarItemWiget.dart';
import 'package:flutter/material.dart';

class AttributesScreen extends StatefulWidget {
  AttributesScreen({super.key});

  @override
  State<AttributesScreen> createState() => _AttributesScreenState();
}

class _AttributesScreenState extends State<AttributesScreen> {
  late AttributesController controller = AttributesController();

  void changeIndex(int index) {
    setState(() {
      controller.currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundWidget(
            assetUrl: 'lib/assest/conan.png',
            fit: 'fitHeight',
          ),
          AppBarWidget(
            appBarText: 'Atributos',
            callback: () => controller.goToBackScreen(context),
          ),
          controller.widgets.elementAt(controller.currentIndex),
          Container(
            alignment: Alignment.bottomCenter,
            child: BottomNavigationBar(
              backgroundColor: const Color(0x44000000),
              elevation: 3,
              currentIndex: controller.currentIndex,
              onTap: changeIndex,
              selectedItemColor: PrimaryColor(),
              unselectedItemColor: PrimaryColorN90(),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItemWidget().bottomNavigationBarItemWidget(
                  'lib/assest/attributesIcon.png',
                  'Home',
                ),
                BottomNavigationBarItemWidget().bottomNavigationBarItemWidget(
                  'lib/assest/strenghtIcon.png',
                  'Sobre',
                ),
                BottomNavigationBarItemWidget().bottomNavigationBarItemWidget(
                  'lib/assest/attributesIcon.png',
                  'Evolução',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
