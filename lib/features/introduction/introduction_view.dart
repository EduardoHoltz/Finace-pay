import 'package:finance_pay/common/constants/app_colors.dart';
import 'package:finance_pay/common/constants/app_text.dart';
import 'package:flutter/material.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  Spacing
              const SizedBox(height: 60),

              // Cellphone jpg
              Flexible(
                child: Image.asset('assets/imgs/cellphone_screen.png'),
              ),

              // Spacing
              const SizedBox(height: 45),

              // FinancePay
              Text(
                'FinancePay',
                style: AppText.bigText.copyWith(color: AppColors.purpleColor),
              ),

              // Spacing
              const SizedBox(height: 45),

              // Boost Your Savings
              Text(
                'BOOST YOUR SAVINGS',
                style:
                    AppText.mediumText.copyWith(color: AppColors.purpleColor),
              ),

              // Spacing
              const SizedBox(height: 25),

              // Sign in
              ElevatedButton(
                onPressed: () {},
                child: const Text('Get Started'),
              ),

              // Spacing
              const SizedBox(height: 45),

              // Have A Account?  
              Text(
                'Already have an account?',
                style: AppText.smallText.copyWith(color: AppColors.purpleColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
