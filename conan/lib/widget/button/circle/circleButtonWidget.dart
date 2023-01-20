import 'package:conan/theme/text/textStyle.dart';
import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {
  final String buttonText;
  final String buttonImage;
  final callback;

  const CircleButtonWidget({
    super.key,
    required this.buttonText,
    required this.buttonImage,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {
        callback(),
        },
      child: Column(
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(buttonImage), fit: BoxFit.scaleDown),
              ),
            ),
          ),
          Text(
            buttonText,
            style: FontH5(),
          ),
        ],
      ),
    );
  }
}
