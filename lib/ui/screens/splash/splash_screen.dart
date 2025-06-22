import 'dart:async';

import 'package:blinkit_clone/domain/constants/appcolors.dart';
import 'package:blinkit_clone/ui/screens/splash/login_screen.dart';
// ignore: unused_import
import 'package:blinkit_clone/ui/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBg,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset("assets/images/logoblinkit.png")
            UiHelper.customImage(image: "logoblinkit.png")
          ],
        ));
  }
}
