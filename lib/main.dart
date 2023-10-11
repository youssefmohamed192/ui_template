import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_template/providers/bottom_nav_bar_provider.dart';
import 'package:ui_template/providers/carousel_provider.dart';
import 'package:ui_template/providers/theme_provider.dart';
import 'package:ui_template/ui/screens/home/home_screen.dart';
import 'package:ui_template/utils/app_theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => BottomNavigationBarProvider()),
        ChangeNotifierProvider(create: (_) => PageIndexProvider()),

      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context); // Access the ThemeProvider directly

    return MaterialApp(
      themeMode: themeProvider.currentTheme,
      theme: AppTheme.lightTheme,
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}