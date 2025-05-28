import 'package:financas_app/common/constants/app_colors.dart';
import 'package:financas_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final BorderRadius _borderRadius = const BorderRadius.all(
    Radius.circular(18.0),
  ); //Propriedade privada

  const PrimaryButton({Key? key, this.onPressed, required this.text})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        height: 56.0,
        width: 160.0,
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:
                onPressed != null
                    ? AppColors.greenGradient
                    : AppColors.greyGradient,
          ),
        ),
        child: InkWell(
          borderRadius: _borderRadius,
          onTap: onPressed,
          child: Align(
            child: Text(
              text,
              style: AppTextStyles.buttonText.copyWith(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
