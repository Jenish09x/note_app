import 'package:flutter/material.dart';
import 'package:note_app/screen/splash_screen.dart';
import '../Screen/home_screen.dart';
import '../screen/student_info_screen.dart';

Map<String, WidgetBuilder> screen_routes = {
  '/': (context) => SplashScreen(),
  'home': (context) => HomeScreen(),
  'data':(context) => StudentDataScreen(),
};