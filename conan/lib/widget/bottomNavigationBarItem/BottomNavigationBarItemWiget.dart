import 'package:flutter/material.dart';

class BottomNavigationBarItemWidget {
  BottomNavigationBarItem bottomNavigationBarItemWidget(String imageUrl, IconData iconData, String descripton, bool isAsset) {
    return BottomNavigationBarItem(
      icon: isAsset? Image(
        image: AssetImage(imageUrl),
        width: 24,
        height: 24,
      ) : Icon(iconData),
      label: descripton,
    );
  }
}
