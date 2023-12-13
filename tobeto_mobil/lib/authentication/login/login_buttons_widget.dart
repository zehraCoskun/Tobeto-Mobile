import 'package:flutter/material.dart';
import 'package:tobeto_mobil/colors/tobeto_colors.dart';
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
          style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(MyColors.mainTextColor),
          ),
          child: const Text(loginForgotText),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              textStyle: const TextStyle(fontSize: 20)),
          child: const Text(loginButtonText),
        ),
      ],
    );
  }
}
