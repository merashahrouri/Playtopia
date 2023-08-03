import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_final_project/view/IntroductionScreen/intropage.dart';
import 'package:onboarding/onboarding.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const IntroductionPage()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.only(top: 270),
        child: ListView(children: [
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Center(
              child: Image.asset('assets/images/img/logo.png')
              ),
          ),
        ]),
      ),
    );
  }
}
