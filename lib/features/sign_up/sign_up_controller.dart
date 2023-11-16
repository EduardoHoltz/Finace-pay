import 'dart:developer';

import 'package:finance_pay/features/sign_up/sign_up_state.dart';
import 'package:flutter/foundation.dart';

class SignUpController extends ChangeNotifier {
  SignUpState _state = SignUpInitialState();

  SignUpState get state => _state;

  void _changeState(SignUpState newState) {
    _state = newState;
    notifyListeners();
  }

  Future<bool> doSignUp() async {
    _changeState(SignUpStateLoadingState());

    await Future.delayed(const Duration(seconds: 2));

    log('user logged');

    _changeState(SignUpSuccessState());

    return true;
  }
}
