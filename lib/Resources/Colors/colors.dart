import 'package:flutter/material.dart';

class AppColors {
  static BoxDecoration buildGradientBoxDecoration() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.white60,
          Colors.blueAccent,
        ],
        begin: Alignment.centerRight,
        end: Alignment.topLeft,
        stops: [0.1, 1.1],
        tileMode: TileMode.clamp,
      ),
    );
  }
}
