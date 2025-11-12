import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:xgenious_assignment/features/common/ui/controller/main_bottom_nav_controller.dart';
import 'package:xgenious_assignment/features/home/ui/screens/home_screen.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  final List<Widget> _screens = const [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(
      builder: (bottomNavController) {
        return Scaffold(
          body: _screens[bottomNavController.selectedIndex],
          bottomNavigationBar: NavigationBar(
            selectedIndex: bottomNavController.selectedIndex,

            onDestinationSelected: (index) {
              bottomNavController.changeIndex(index);
            },

            indicatorColor: Colors.transparent,
            backgroundColor: Colors.white,
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home, color: Color(0xFF007456),),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.message),
                selectedIcon: Icon(Icons.message, color: Color(0xFF007456),), label: 'Inbox'),
              NavigationDestination(
                icon: Icon(Icons.search_outlined),
                selectedIcon: Icon(Icons.search, color: Color(0xFF007456),),
                label: 'Search',
              ),
              NavigationDestination(
                icon: Icon(Icons.grid_view_outlined),
                selectedIcon: Icon(Icons.grid_view, color: Color(0xFF007456),), label: 'More'),
              NavigationDestination(
                icon: Icon(Icons.person_2_outlined),
                selectedIcon: Icon(Icons.person_2_outlined, color: Color(0xFF007456),),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
