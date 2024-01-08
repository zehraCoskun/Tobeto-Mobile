import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/login_text.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ElevatedButton(
              onPressed: () {
                Theme.of(context).textButtonTheme.style;
              },
              child: const Text(signUp)),
        ),
      ],
    );
  }
}
