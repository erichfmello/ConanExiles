import 'dart:async';

import 'package:flutter/material.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  late double angle = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 80), (obj) {
      setState(() {
        angle += 0.1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(
          top: 350,
        ),
        width: 200,
        height: 200,
        child: Transform.rotate(
          angle: angle,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assest/loading.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
