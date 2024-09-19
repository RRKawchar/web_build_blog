import 'package:blog_website/src/core/theme/app_theme.dart';
import 'package:blog_website/src/features/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      themeMode: ThemeMode.system,
      home: Dashboard()
    );
  }
}

