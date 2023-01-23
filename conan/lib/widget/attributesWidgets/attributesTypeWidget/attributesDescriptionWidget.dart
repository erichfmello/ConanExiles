import 'dart:ffi';

import 'package:conan/theme/color/colorTheme.dart';
import 'package:conan/theme/text/textStyle.dart';
import 'package:flutter/material.dart';

class AttributesDescriptionWidget extends StatelessWidget {
  final String text;
  final bool isHeader;

  const AttributesDescriptionWidget({
    super.key,
    required this.text,
    required this.isHeader,
  });

  @override
  Widget build(BuildContext context) {
    return isHeader
        ? Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
              top: 16,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: PrimaryColor(),
                  width: 3,
                ),
              ),
            ),
            child: Text(
              text,
              style: FontH4PrimaryColor(),
            ),
          )
        : Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
              top: 8,
            ),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                    right: 8,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: PrimaryColor(),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 56,
                  child: Text(
                    text,
                    style: FontB3PrimaryColor(),
                  ),
                ),
              ],
            ),
          );
  }
}
