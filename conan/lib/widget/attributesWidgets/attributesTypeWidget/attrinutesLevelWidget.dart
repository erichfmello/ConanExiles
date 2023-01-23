import 'package:conan/theme/color/colorTheme.dart';
import 'package:conan/theme/text/textStyle.dart';
import 'package:flutter/material.dart';

class AttributesLevelWidget extends StatelessWidget {
  final String assetUrl;
  final String text;
  final bool isSelected;
  final callback;

  const AttributesLevelWidget({
    super.key,
    required this.assetUrl,
    required this.text,
    required this.isSelected,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => callback(),
      child: Container(
        decoration: isSelected
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: PrimaryColor(),
                    width: 1,
                  ),
                ),
              )
            : null,
        child: Row(
          children: <Widget>[
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(assetUrl),
                ),
              ),
            ),
            Text(
              text,
              style: FontB3PrimaryColor(),
            )
          ],
        ),
      ),
    );
  }
}
