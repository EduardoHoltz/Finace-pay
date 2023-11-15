import 'dart:developer';

import 'package:finance_pay/common/constants/app_colors.dart';
import 'package:finance_pay/common/constants/app_text.dart';
import 'package:finance_pay/common/utils/validator.dart';
import 'package:finance_pay/common/widgets/custom_form_text_form_field.dart';
import 'package:finance_pay/common/widgets/custom_password_form.dart';
import 'package:finance_pay/common/widgets/custom_text_list_button.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Spend Master',
                  textAlign: TextAlign.center,
                  style: AppText.bigText.copyWith(color: AppColors.pinkColor),
                ),
              ),

              // Image
              Image.asset(
                'assets/imgs/cellphone_sign_up.png',
                height: 200,
              ),

              // Form
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Name | Email fields
                    const CustomTextFormField(
                      labelText: 'Name',
                      hintText: 'Eduardo',
                      validator: Validator.nameValidator,
                    ),
                    const SizedBox(height: 12),

                    const CustomTextFormField(
                      labelText: 'Email',
                      hintText: 'eduardo@email.com',
                      validator: Validator.emailValidator,
                    ),
                    const SizedBox(height: 12),

                    // Password fields
                    PasswordFormField(
                      controller: _passwordController,
                      labelText: "Password",
                      hintText: '* * *',
                      validator: Validator.passwordValidator,
                      helperText: 'Must have at least 8 characters, 1 capital letter',
                    ),
                    const SizedBox(height: 12),

                    PasswordFormField(
                      labelText: "Confirm Password",
                      hintText: '* * *',
                      validator: (value) => Validator.passwordConfirmValidator(
                        value,
                        _passwordController.text,
                      ),
                    ),
                  ],
                ),
              ),

              // Button
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    final valid = _formKey.currentState != null &&
                        _formKey.currentState!.validate();

                    if (valid) {
                      log('continue . . .');
                    } else {
                      log('login error');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: AppColors.purpleColor,
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),

              // Horizontal Align with Gesture Detector that receives a text list
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
        ),
      ),
    );
  }
}
