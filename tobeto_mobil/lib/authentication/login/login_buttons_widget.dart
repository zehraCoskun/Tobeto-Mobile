import 'package:flutter/material.dart';
import 'package:tobeto_mobil/consts/constants.dart';

class LoginButtonsWidget extends StatelessWidget {
  const LoginButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          style: Theme.of(context).textButtonTheme.style,
          child: const Text(loginForgotText),
        ),
        ElevatedButton(
          onPressed: () {},
          style: Theme.of(context).elevatedButtonTheme.style,
          child: const Text(loginButtonText),
        ),
      ],
    );
  }
}
