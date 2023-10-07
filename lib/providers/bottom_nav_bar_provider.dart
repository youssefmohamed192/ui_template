import 'package:flutter/material.dart';

class BottomNavigationBarProvider with ChangeNotifier {
  int screenIndex = 0; // Initial screen index is set to 0

  // Getter to fetch the current screen index
  int get fetchCurrentScreenIndex => screenIndex;

  // Method to update the screen index and notify listeners
  void updateScreenIndex(int newIndex) {
    screenIndex = newIndex; // Update the screen index
    notifyListeners(); // Notify listeners (widgets listening to changes)
  }
}