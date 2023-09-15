import 'package:flutter/material.dart';

class VideoConfig extends ChangeNotifier {
  bool isDarkMode = false;

  void toggleIsDarkMode() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
