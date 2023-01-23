import 'package:flutter/material.dart';

class BottomNavigationBarItemWidget {
  BottomNavigationBarItem bottomNavigationBarItemWidget(String imageUrl, String descripton) {
    return BottomNavigationBarItem(
      icon: Image(
        image: AssetImage(imageUrl),
        width: 24,
        height: 24,
      ),
      label: descripton,
    );
  }
}
