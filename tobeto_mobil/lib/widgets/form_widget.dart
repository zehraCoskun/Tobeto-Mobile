import 'package:flutter/material.dart';
import 'package:tobeto_mobil/colors/tobeto_colors.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    super.key,
    required this.prefixIcon,
    required this.labelText,
    required this.hintText,
    this.suffixIcon,
    required this.isPassword,
  });

  final Icon prefixIcon;
  final String labelText;
  final String hintText;
  final Widget? suffixIcon;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIconColor: Theme.of(context).primaryColor,
        prefixIcon: prefixIcon,
        labelText: labelText, //placeholder
        hintText: hintText,
        suffixIconColor: MyColors.mainTextColor,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
      obscureText: isPassword,
    );
  }
}
