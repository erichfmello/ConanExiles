import 'package:conan/theme/color/colorTheme.dart';
import 'package:conan/theme/text/textStyle.dart';
import 'package:flutter/material.dart';

class NavigationWithDescriptionWidget extends StatelessWidget {
  final String iconUrl;
  final String label;
  final bool isSelected;
  final callback;

  NavigationWithDescriptionWidget({
    super.key,
    required this.iconUrl,
    required this.label,
    required this.isSelected,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 16,
      ),
      child: TextButton(
        onPressed: () => callback(),
        child: Column(
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(iconUrl),
                ),
              ),
            ),
            Container(
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
              child: Text(
                label,
                style: FontB3PrimaryColor(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
