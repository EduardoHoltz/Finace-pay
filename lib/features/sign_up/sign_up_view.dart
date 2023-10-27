import 'package:finance_pay/common/constants/app_colors.dart';
import 'package:finance_pay/common/constants/app_text.dart';
import 'package:finance_pay/common/widgets/custom_text_list_button.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo and Title
              Image.asset(
                'assets/imgs/cellphone_sign_up.png',
                height: 250,
              ),
              const SizedBox(height: 20),
              Text(
                'FinancePay',
                style: AppText.bigText.copyWith(color: AppColors.purpleColor),
              ),
              Text(
                'BOOST YOUR SAVINGS',
                style:
                    AppText.mediumText.copyWith(color: AppColors.purpleColor),
              ),

              // Form
              // email
              CustomTextFormField(
                key: UniqueKey(),
                labelText: 'Email',
              ),

              //password
              CustomTextFormField(
                key: UniqueKey(),
                labelText: 'Password',
              ),

              // confirm
              CustomTextFormField(
                key: UniqueKey(),
                labelText: 'Confirm Password',
              ),

              // Sign Up Button
              ElevatedButton(
                onPressed: () {
                  // Handle sign-up action
                },
                child: const Text('Sign Up'),
              ),

              // Spacing
              const SizedBox(height: 20),

              // Already have an account
              CustomTextListButton(
                onPressed: () {
                  // Handle tap action to navigate to login
                },
                children: [
                  Text(
                    'Already have an account? ',
                    style: AppText.smallText
                        .copyWith(color: AppColors.purpleColor),
                  ),
                  Text(
                    'Log in',
                    style: AppText.smallText
                        .copyWith(color: AppColors.purpleColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  const CustomTextFormField({
    required Key key,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          border: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 95, 0, 248)),
          ),
          errorBorder: const OutlineInputBorder(),
          focusedErrorBorder: const OutlineInputBorder(),
          disabledBorder: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
