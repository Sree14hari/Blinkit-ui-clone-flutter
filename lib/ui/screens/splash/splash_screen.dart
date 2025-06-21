import 'package:blinkit_clone/domain/constants/appcolors.dart';
import 'package:blinkit_clone/ui/widgets/uihelper.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      body: Column(
        children: [
          UiHelper.customImage(image:'logoblinkit.png' )
        ],
      )
    );
  }
}
