import 'package:blog_website/src/core/utils/app_color.dart';
import 'package:flutter/material.dart';

var lightTheme=ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: kBackgroundColor,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.black,
    )
  )
);