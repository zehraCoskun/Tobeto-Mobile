import 'package:flutter/material.dart';
import 'package:tobeto_mobil/consts/constants.dart';
import 'package:tobeto_mobil/screens/forgat_password_screen.dart';

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
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const ForgatPasswordScreen())); //parola unuttum Sayfasına geçiş eklendi.
          },
          style: Theme.of(context).textButtonTheme.style,
          child: const Text(loginForgotText),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/home");
          },
          style: Theme.of(context).elevatedButtonTheme.style,
          child: const Text(loginButtonText),
        ),
      ],
    );
  }
}
