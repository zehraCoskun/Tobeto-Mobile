import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    super.key,
    required this.prefixIcon,
    required this.labelText,
    this.hintText,
    this.suffixIcon,
    this.isPassword,
    this.controller,
    this.validator,
    this.onChanged,
    this.onSaved,
  });

  final Icon prefixIcon;
  final Widget? suffixIcon;
  final String labelText;
  final String? hintText;
  final bool? isPassword;

  final String? Function(String? value)? validator;
  final void Function(String newValue)? onChanged;
  final void Function(String? value)? onSaved;
  
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      onSaved: onSaved,
      decoration: InputDecoration(
        prefixIconColor: Theme.of(context).inputDecorationTheme.prefixIconColor,
        prefixIcon: prefixIcon,
        labelText: labelText, //placeholder
        hintText: hintText,
        suffixIconColor: Theme.of(context).inputDecorationTheme.suffixIconColor,
        suffixIcon: suffixIcon,
        enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
        focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
      ),
      obscureText: isPassword ?? false,
    );
  }
}
