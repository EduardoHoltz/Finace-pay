import 'package:finance_pay/features/introduction/introduction_view.dart';
// import 'package:finance_pay/features/splash/splash_view.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroductionView(),
    );
  }
}
