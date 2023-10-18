import 'package:flutter/material.dart';
import 'Utils/app_routes.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: screen_routes,
    ),
  );
}
