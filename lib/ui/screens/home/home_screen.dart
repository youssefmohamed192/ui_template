import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_template/providers/bottom_nav_bar_provider.dart';
import 'package:ui_template/ui/screens/home/tabs/mental_health_tab/mental_health_tab.dart';
import 'package:ui_template/ui/screens/home/tabs/menus_tab/menus_tab.dart';
import 'package:ui_template/ui/screens/home/tabs/news_tab/news_tab.dart';
import 'package:ui_template/ui/screens/home/tabs/workout_tab/workout_tab.dart';
import 'package:ui_template/utils/app_assets.dart';
import 'package:ui_template/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> tabs = [
    MentalHealthTab(),
    WorkoutTab(),
    NewsTab(),
    MenusTab(),
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavigationBarProvider>(context);
    final int currentScreenIndex = provider.fetchCurrentScreenIndex;

    return Scaffold(
      body: tabs[currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primary,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.homeNavIcon)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.personNavIcon)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.insightsNavIcon)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.navIcon)),
            label: '',
          ),
        ],
        currentIndex: currentScreenIndex,
        onTap: (value) {
          provider.updateScreenIndex(value);
        },
      ),
    );
  }
}