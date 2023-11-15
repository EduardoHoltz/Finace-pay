import 'dart:developer';

import 'package:finance_pay/common/constants/app_colors.dart';
import 'package:finance_pay/common/constants/app_text.dart';
import 'package:finance_pay/common/widgets/custom_form_text_form_field.dart';
import 'package:finance_pay/common/widgets/custom_password_form.dart';
import 'package:finance_pay/common/widgets/custom_text_list_button.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Text
          Text(
            'Spend Master',
            textAlign: TextAlign.center,
            style: AppText.mediumText.copyWith(color: AppColors.pinkColor),
          ),

          // Img
          Image.asset('assets/imgs/cellphone_sign_up.png'),

          // Form
          const Form(
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: 'your name',
                  hintText: 'eduardo',
                ),
                PasswordFormField(
                  labelText: "your password",
                  hintText: '* * *',
                ),
                PasswordFormField(
                  labelText: "confirm  password",
                  hintText: '* * *',
                ),
              ],
            ),
          ),

          // Button
          Padding(
            padding: const EdgeInsets.only(
                left: 32.0, right: 32.0, top: 16.0, bottom: 4.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Sign Up'),
            ),
          ),

          // Spacing
          const SizedBox(height: 45),

          // Horizontal Align with Gesture Detector that recieve a text list
          CustomTextListButton(
            onPressed: () {
              log('clicked');
            },
            children: [
              Text(
                'Already have an account? ',
                style: AppText.smallText.copyWith(color: AppColors.purpleColor),
              ),
              Text(
                'Log in',
                style: AppText.smallText.copyWith(color: AppColors.purpleColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
