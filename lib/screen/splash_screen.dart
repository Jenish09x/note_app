import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 @override
  Widget build(BuildContext context) {
   Future.delayed(const Duration(seconds: 3), () {
     Navigator.pushReplacementNamed(context, 'home');
   });
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Image(
            image: AssetImage("assets/img/img1.png"),height: 200,
          ),
        ),
      ),
    );
  }
}
