import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';

class ProfileEditFormField extends StatelessWidget {
  const ProfileEditFormField({
    Key? key,
    this.initialValue,
    this.label,
    this.icon,
    this.validator,
    this.onSaved,
    this.onChanged,
    this.child,
  }) : super(key: key);

  final String? initialValue;
  final Widget? label;
  final Widget? icon;
  final String? Function(String? value)? validator;
  final void Function(String? value)? onSaved;
  final void Function(String newValue)? onChanged;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          containerBasicShadow(),
        ],
      ),
      child: child ??
          TextFormField(
            initialValue: initialValue,
            decoration: InputDecoration(
              label: label,
              icon: icon,
            ),
            validator: validator,
            onSaved: onSaved,
            onChanged: onChanged,
          ),
    );
  }
}