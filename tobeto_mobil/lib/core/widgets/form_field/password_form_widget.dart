import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/form_field/form_widget.dart';

class PasswordFormWidget extends StatefulWidget {
  const PasswordFormWidget({
    Key? key,
    required this.labelText,
    this.controller,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  final String labelText;
  final TextEditingController? controller;

  final void Function(String newValue)? onChanged;
  final String? Function(String? value)? validator;

  @override
  State<PasswordFormWidget> createState() => _PasswordFormWidgetState();
}

class _PasswordFormWidgetState extends State<PasswordFormWidget> {
  bool isInvisible = true;

  void handleInvisible() {
    if (isInvisible) {
      setState(() {
        isInvisible = false;
      });
    } else {
      setState(() {
        isInvisible = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormWidget(
      controller: widget.controller,
      prefixIcon: const Icon(Icons.lock_outline),
      labelText: widget.labelText,
      suffixIcon: IconButton(
        onPressed: handleInvisible,
        icon: isInvisible
            ? const Icon(Icons.visibility_outlined)
            : const Icon(Icons.visibility_off_outlined),
      ),
      isPassword: isInvisible,
      onChanged: widget.onChanged,
      validator: widget.validator,
    );
  }
}
