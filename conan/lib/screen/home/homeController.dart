import 'package:conan/model/ScreenEnum.dart';
import 'package:conan/model/conan.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController {
  final Conan conan = Conan();
  late BuildContext context;

  HomeController(BuildContext buildContext) {
    context = buildContext;
  }

  void goToAttributes() {
    conan.goToScreen(context, ScreenEnum.AttributesScreen);
  }

  void none() {

  }
  
  Future<void> goToWiki() async {
    Uri url = Uri.parse("https://conanexiles.fandom.com/pt-br/wiki/Conan_Exiles_Wiki");
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }
}
