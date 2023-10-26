import 'package:finance_pay/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: SweepGradient(
            colors: [AppColors.purpleColor, AppColors.pinkColor],
            stops: [0.25, 0.75],
            center: Alignment.topLeft,
          ),
        ),
      ),
    );
  }
}
