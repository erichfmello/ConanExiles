import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final String assetUrl;
  late String fit;

  BackgroundWidget({
    super.key,
    required this.assetUrl,
    this.fit = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetUrl),
          fit: fit == 'fitHeight' ? BoxFit.fitHeight : null,
        ),
      ),
    );
  }
}
