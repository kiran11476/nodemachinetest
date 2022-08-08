import 'dart:async';

import 'package:flutter/material.dart';

import 'package:machinetest/view/signup/signup_screen.dart';

//splash screen
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const ScreenHome())));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
        child: Image.asset('lib/asset/victoria-shes-UC0HZdUitWY-unsplash.jpeg'),
      ),
    );
  }
}
