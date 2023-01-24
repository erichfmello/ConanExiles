import 'package:conan/model/ScreenEnum.dart';
import 'package:conan/screen/talents/talentController.dart';
import 'package:conan/theme/color/colorTheme.dart';
import 'package:conan/widget/appBar/AppBarWidget.dart';
import 'package:conan/widget/background/backgroundWidget.dart';
import 'package:conan/widget/bottomNavigationBarItem/BottomNavigationBarItemWiget.dart';
import 'package:conan/widget/talents/talentsHomeWidget.dart';
import 'package:flutter/material.dart';

class TalentScreen extends StatefulWidget {
  TalentScreen({super.key});

  @override
  State<TalentScreen> createState() => _TalentScreenState();
}

class _TalentScreenState extends State<TalentScreen> {
  late TalentController controller = TalentController();

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
            appBarText: 'Talentos',
            callback: () => controller.goToPage(context, ScreenEnum.BackScreen),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 64,
            ),
            width: double.infinity - 32,
            height: MediaQuery.of(context).size.height - 130,
            child: controller.widgets.elementAt(controller.currentIndex),
          ),
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
                  '',
                  Icons.home,
                  'Home',
                  false,
                ),
                BottomNavigationBarItemWidget().bottomNavigationBarItemWidget(
                  'lib/assest/strenghtIcon.png',
                  Icons.category,
                  'Categorias',
                  false,
                ),
                BottomNavigationBarItemWidget().bottomNavigationBarItemWidget(
                  '',
                  Icons.handyman,
                  'Martelo construtor',
                  false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
