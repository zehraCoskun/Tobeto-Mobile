import 'package:flutter/material.dart';
import 'package:tobeto_mobil/authentication/login/login_buttons_widget.dart';
import 'package:tobeto_mobil/consts/constants.dart';
import 'package:tobeto_mobil/core/widgets/form_widget.dart';
import 'package:tobeto_mobil/core/widgets/password_form_widget.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
    this.usernameController,
    this.passwordController,
  });

  final TextEditingController? usernameController;
  final TextEditingController? passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: padding16),
          FormWidget(
            controller: usernameController,
            prefixIcon: const Icon(Icons.person_outline_rounded),
            labelText: loginUsernameLabel,
            hintText: loginUsernameHint,
          ),
          const SizedBox(height: padding16),
          PasswordFormWidget(
            controller: passwordController,
          ),
          const SizedBox(height: padding16),
          const LoginButtonsWidget(),
        ],
      ),
    );
  }
}