import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? counterText;
  final IconData? suffixIcon;
  final String? Function(String?)? validationFn;
  final TextInputType? inputType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.labelText,
    this.hintText,
    this.counterText,
    this.suffixIcon,
    this.validationFn,
    this.inputType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      textCapitalization: TextCapitalization.words,
      keyboardType: inputType ?? TextInputType.text,
      obscureText: obscureText,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: validationFn,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        counterText: counterText,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
      ),
    );
  }
}
