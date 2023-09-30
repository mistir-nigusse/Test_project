import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const CustomTextButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(foregroundColor: Colors.grey),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(decoration: TextDecoration.underline),
        ));
  }
}
