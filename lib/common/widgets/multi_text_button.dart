import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {

  final List<Text> texts;
  final VoidCallback? onPressed;

  const CustomTextButton({
    Key? key,
    required this.texts,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: texts,
      ),
    );
  }
}
