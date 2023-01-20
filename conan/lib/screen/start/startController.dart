import 'dart:async';

import 'package:conan/model/ScreenEnum.dart';
import 'package:conan/model/conan.dart';
import 'package:flutter/material.dart';

class StartController {
  void goToScreen(BuildContext context) {
    Timer.periodic(const Duration(milliseconds: 2000), (obj) {
      Conan().goToScreen(context, ScreenEnum.HomeScreen);
      obj.cancel();
    });
  }
}
