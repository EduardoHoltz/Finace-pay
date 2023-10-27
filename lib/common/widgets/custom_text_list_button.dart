import 'package:flutter/material.dart';

class CustomTextListButton extends StatelessWidget {
  const CustomTextListButton({super.key, required this.children, required this.onPressed});

  // ? not null for on pressad () {}

  // Adding a text list
  final List<Text> children;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: children),
    );
  }
}