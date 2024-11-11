import 'package:bottom_navigation_bar_example/screens/profile_screen.dart';
import 'package:bottom_navigation_bar_example/screens/search_screen.dart';
import 'package:flutter/material.dart';
import '../services/service_locator.dart';
import '../view_models/bottom_nav_view_model.dart';
import 'home_screen.dart';

class MainScreen extends StatelessWidget {
  final BottomNavViewModel viewModel = getIt<BottomNavViewModel>();

  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Example"),
      ),
      body: AnimatedBuilder(
        animation: viewModel,
        builder: (context, _) {
          return _screens[viewModel.selectedIndex];
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: viewModel.selectedIndex,
        onTap: viewModel.onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: viewModel.getSelectedColor(0)),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: viewModel.getSelectedColor(1)),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: viewModel.getSelectedColor(2)),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
