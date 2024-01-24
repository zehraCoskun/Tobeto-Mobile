import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/login_text.dart';
import 'package:tobeto_mobil/pages/entry_pages/recovery/recovery_page.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //sizedbox flexible widget ile degistirildi
        Flexible(
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

            //overflow ve maxline eklendi
            child: const Text(
              loginForgotText,
              overflow: TextOverflow.visible,
              maxLines: 1,
            ),
          ),
        ),

        // ElevatedButton flexible ile sarildi
        Flexible(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/home");
            },
            style: Theme.of(context).elevatedButtonTheme.style,

            //overflow ve maxlines eklendi
            child: const Text(
              loginButtonText,
              overflow: TextOverflow.visible,
              maxLines: 1,
            ),
          ),
        ),
      ],
    );
  }
}
