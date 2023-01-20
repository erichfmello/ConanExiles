import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController {
  void none() {
  }
  
  Future<void> goToWiki() async {
    Uri url = Uri.parse("https://conanexiles.fandom.com/pt-br/wiki/Conan_Exiles_Wiki");
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }
}
