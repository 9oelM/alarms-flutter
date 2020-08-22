import 'package:flutter/widgets.dart';

class DarkModeModel with ChangeNotifier {
  bool isDarkMode = true;

  void toggleDarkMode() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
