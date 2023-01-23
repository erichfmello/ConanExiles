import 'package:conan/theme/text/textStyle.dart';
import 'package:flutter/material.dart';

class AttributesAboutWidget extends StatelessWidget {
  const AttributesAboutWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Sobre",
        style: FontH3PrimaryColor(),
      ),
    );
  }
}
