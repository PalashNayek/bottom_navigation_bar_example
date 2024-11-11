import 'package:flutter/material.dart';

class BottomNavViewModel extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void onTabTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  // Colors for selected and unselected icons
  Color getSelectedColor(int index) => _selectedIndex == index ? Colors.blue : Colors.grey;
}
