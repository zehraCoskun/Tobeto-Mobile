import 'package:flutter/material.dart';
import 'package:tobeto_mobil/colors/tobeto_colors.dart';
import 'package:tobeto_mobil/consts/constants.dart';
import 'package:tobeto_mobil/widgets/background_widget.dart';
import 'package:tobeto_mobil/widgets/clipper_background_widdget.dart';

import '../widgets/form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const BackgroundWidget(),
          Padding(
            padding: const EdgeInsets.all(padding16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: padding16),
                const FormWidget(
                    prefixIcon: Icon(Icons.person_outline_rounded), labelText: loginUsernameLabel, hintText: loginUsernameHint, isPassword: false),
                const SizedBox(height: padding16),
                FormWidget(
                    prefixIcon: const Icon(Icons.lock_outline),
                    labelText: loginPasswordLabel,
                    hintText: loginPasswordHint,
                    suffixIcon: IconButton(icon: const Icon(Icons.remove_red_eye_sharp), onPressed: () {}),
                    isPassword: true),
                const SizedBox(height: padding16),
                const LoginScreenButtons(),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Image.asset(logo, color: MyColors.mainColor),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

class LoginScreenButtons extends StatelessWidget {
  const LoginScreenButtons({
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
          style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(horizontal: 40), textStyle: const TextStyle(fontSize: 20)),
          child: const Text(loginButtonText),
        )
      ],
    );
  }
}
