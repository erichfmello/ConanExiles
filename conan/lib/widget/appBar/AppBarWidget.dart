import 'package:flutter/material.dart';

import 'package:conan/theme/color/colorTheme.dart';
import 'package:conan/theme/text/textStyle.dart';

class AppBarWidget extends StatelessWidget {
  final String appBarText;
  final callback;

  const AppBarWidget({
    super.key,
    required this.appBarText,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: PrimaryColor(),
        ),
        onPressed: () => {
          callback(),
        },
      ),
      title: Text(
        appBarText,
        style: FontH3PrimaryColor(),
      ),
    );
  }
}
