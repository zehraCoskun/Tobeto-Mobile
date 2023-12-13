import 'package:flutter/material.dart';
import 'package:tobeto_mobil/authentication/login/login_buttons_widget.dart';
import 'package:tobeto_mobil/consts/constants.dart';
import 'package:tobeto_mobil/core/widgets/form_widget.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: padding16),
          const FormWidget(
            prefixIcon: Icon(Icons.person_outline_rounded),
            labelText: loginUsernameLabel,
            hintText: loginUsernameHint,
          ),
          const SizedBox(height: padding16),
          FormWidget(
            prefixIcon: const Icon(Icons.lock_outline),
            labelText: loginPasswordLabel,
            hintText: loginPasswordHint,
            suffixIcon: IconButton(
              icon: const Icon(Icons.remove_red_eye_sharp),
              onPressed: () {},
            ),
            isPassword: true,
          ),
          const SizedBox(height: padding16),
          const LoginButtonsWidget(),
        ],
      ),
    );
  }
}