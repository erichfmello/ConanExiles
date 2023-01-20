import 'package:conan/model/ScreenEnum.dart';
import 'package:conan/screen/home/homeController.dart';
import 'package:conan/widget/background/backgroundWidget.dart';
import 'package:conan/widget/button/circle/circleButtonWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final HomeController controller = HomeController(context);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundWidget(
            assetUrl: 'lib/assest/conan.png',
            fit: 'fitHeight',
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            margin: const EdgeInsets.only(
              top: 32,
              right: 32,
              bottom: 16,
              left: 32,
            ),
            child: ListView(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 40,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleButtonWidget(
                        buttonText: 'Atributos',
                        buttonImage: 'lib/assest/attributesIcon.png',
                        callback: controller.goToAttributes,
                      ),
                      CircleButtonWidget(
                        buttonText: 'Talentos',
                        buttonImage: 'lib/assest/talentIcon.png',
                        callback: controller.none,
                      ),
                      CircleButtonWidget(
                        buttonText: 'Wiki',
                        buttonImage: 'lib/assest/wikiIcon.png',
                        callback: controller.goToWiki,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
