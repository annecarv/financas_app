import 'package:financas_app/common/constants/app_colors.dart';
import 'package:financas_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatefulWidget { //TODO: Diferença entre StatelessWidget e StatefulWidget

  final EdgeInsetsGeometry? padding; //caso fosse EdgeInsetsGeometry? seria nullable
  final String? hintText;
  final String? labelText;
  final String? textCapitalization;
  final String? errorText;
  final String? helperText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLength;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final bool? obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;

  const CustomTextFormField({
    Key? key,// super.key,
    this.padding,
    this.hintText,
    this.labelText,
    this.textCapitalization,
    this.errorText,
    this.helperText,
    this.controller,
    this.keyboardType,
    this.maxLength,
    this.textInputAction,
    this.suffixIcon,
    this.obscureText,
    this.inputFormatters,
    this.validator,
  });


  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}


class _CustomTextFormFieldState extends State<CustomTextFormField> { // Classe de Estado

  final defaultBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.greenC2,
    ),
  );

  String? _helperText;

  @override
  void initState() { //o primeiro metodo a ser acessado antes de construir um widget, vem antes do build
    super.initState();
    _helperText = widget.helperText ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      //padding:  widget.padding ?? const EdgeInsets.all(18.0), // Caso nulo, por padrao sera 24
      padding: widget.padding ?? const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 18.0,
      ),
      child: TextFormField(
          onChanged: (value) {
              if (value.length == 1 ) {
                setState(() {
                  _helperText = null;
                });
              } else if (value.isEmpty) {
                setState(() {
                  _helperText = widget.helperText;
                });
              }
          },
          controller: widget.controller,
          obscureText:  widget.obscureText ?? false,
          inputFormatters: widget.inputFormatters,
          validator: widget.validator,
          decoration: InputDecoration(
            helperText: _helperText,
            hintText: widget.hintText ?? 'Digite aqui',
            helperMaxLines: 3,
            labelText: (widget.labelText ?? '').toUpperCase(),
            suffixIcon: widget.suffixIcon,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: AppTextStyles.inputLabelText.copyWith(
                color: AppColors.darkgrey,
          ),
          border: defaultBorder,
          focusedBorder: defaultBorder,
          errorBorder: defaultBorder.copyWith(borderSide: BorderSide(
              color: AppColors.red,
          )),
          focusedErrorBorder: defaultBorder.copyWith(borderSide: BorderSide(
              color: AppColors.red,
          )),
          enabledBorder: defaultBorder,
          disabledBorder: defaultBorder,
        ),
      ),
    );
  }
}