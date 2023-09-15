import 'package:flutter/material.dart';

class VideoConfig extends ChangeNotifier {
  bool isDarkMode = true;

  void toggleIsDarkMode() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
