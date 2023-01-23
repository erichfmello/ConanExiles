import 'package:flutter/material.dart';

import '../color/colorTheme.dart';

TextStyle FontH3PrimaryColor() {
  return TextStyle(
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 26,
    color: PrimaryColor(),
  );
}

TextStyle FontH5PrimaryColor() {
  return TextStyle(
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: PrimaryColor(),
  );
}
