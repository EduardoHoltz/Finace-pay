import 'dart:developer';

import 'package:finance_pay/common/constants/app_colors.dart';
import 'package:finance_pay/common/constants/app_text.dart';
import 'package:finance_pay/common/utils/validator.dart';
import 'package:finance_pay/common/widgets/custom_form_text_form_field.dart';
import 'package:finance_pay/common/widgets/custom_password_form.dart';
import 'package:finance_pay/common/widgets/custom_text_list_button.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

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
          Form(
            key: _formKey,
            child: Column(
              children: [
                // name | email field
                const CustomTextFormField(
                  labelText: 'name',
                  hintText: 'eduardo',
                  validator: Validator.nameValidator,
                ),
                const CustomTextFormField(
                  labelText: 'email',
                  hintText: 'eduardo@email.com',
                  validator: Validator.emailValidator,
                ),

                // password field
                PasswordFormField(
                  controller: _passwordController,
                  labelText: "password",
                  hintText: '* * *',
                  validator: Validator.passwordValidator,
                  helperText: 'Must have at least 8 characters, 1 capitalize',
                ),

                // confirm password field
                PasswordFormField(
                  labelText: "confirm  password",
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
            padding: const EdgeInsets.only(
                left: 32.0, right: 32.0, top: 16.0, bottom: 4.0),
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
