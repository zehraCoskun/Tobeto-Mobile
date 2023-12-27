import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/login_text.dart';
import 'package:tobeto_mobil/pages/recovery/recovery_page.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RecoveryPage(),
                ),
              ); //parola unuttum Sayfasına geçiş eklendi.
            },
            style: Theme.of(context).textButtonTheme.style,
            child: const Text(loginForgotText),
          ),
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
