import 'package:financas_app/common/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PasswordFormField extends StatefulWidget {

  final TextEditingController? controller;
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final String? labelText;
  final String? errorText;
  final String? helperText;
  final FormFieldValidator<String>? validator;

  const PasswordFormField({
    Key? key,//super.key, 
    this.controller, 
    this.padding,
    this.hintText,
    this.labelText,
    this.errorText,
    this.helperText,
    this.validator,
    });

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {

  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      helperText: widget.helperText,
      validator: widget.validator,
      obscureText: isHidden,
      controller: widget.controller,
      padding: widget.padding,
      hintText: widget.hintText,
      labelText: widget.labelText,
      suffixIcon: InkWell(
        borderRadius: BorderRadius.circular(23.0),
        onTap: () {
          setState(() {
            isHidden = !isHidden;
          });
        },
        child: Icon(
            isHidden ? Icons.visibility : Icons.visibility_off
          ),
      ),
    );
  }
}