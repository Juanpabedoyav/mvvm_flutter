import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mvvm/Resources/Colors/colors.dart';
import 'package:mvvm/Resources/Images/image_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Container(
      decoration: AppColors.buildGradientBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Image.asset(
            ImageAssets.nightStatRain,
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
