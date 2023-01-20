import 'package:conan/screen/start/startController.dart';
import 'package:conan/widget/background/backgroundWidget.dart';
import 'package:conan/widget/loading/loadingWidget.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final StartController controller = StartController();

  @override
  void initState() {
    super.initState();
    controller.goToScreen(context);
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
          BackgroundWidget(
            assetUrl: 'lib/assest/logoConan.png',
          ),
          const LoadingWidget(),
        ],
      ),
    );
  }
}
