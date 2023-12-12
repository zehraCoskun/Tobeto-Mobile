import 'package:flutter/material.dart';
import 'package:tobeto_mobil/colors/tobeto_colors.dart';
import 'package:tobeto_mobil/consts/constants.dart';

import 'form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/tobetoBackground.png"),
            fit: BoxFit.cover,
            //colorFilter: ColorFilter.linearToSrgbGamma(),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: const AssetImage("assets/images/tobeto-logo.png"),
              height: size.height * 0.1,
            ),
            const FormWidget(
              prefixIcon: Icon(Icons.person),
              labelText: loginUsernameLabel,
              hintText: loginUsernameHint,
              isPassword: false,
            ),
            const SizedBox(height: 16),
            FormWidget(
              prefixIcon: const Icon(Icons.password),
              labelText: loginPasswordLabel,
              hintText: loginPasswordHint,
              suffixIcon: IconButton(
                icon: const Icon(Icons.remove_red_eye_sharp),
                onPressed: () {},
              ),
              isPassword: true,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStatePropertyAll(MyColors.mainTextColor),
                  ),
                  child: const Text(loginForgotText),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      textStyle: const TextStyle(fontSize: 20)),
                  child: const Text(loginButtonText),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}