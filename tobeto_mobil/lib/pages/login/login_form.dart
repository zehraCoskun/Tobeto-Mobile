import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/sizes.dart';
import 'package:tobeto_mobil/constants/pages/login_text.dart';
import 'package:tobeto_mobil/core/widgets/form_widget.dart';
import 'package:tobeto_mobil/core/widgets/password_form_widget.dart';
import 'package:tobeto_mobil/utils/responsive/responsive_layout.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
    required this.usernameController,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktopBody: buildDesktopLoginForm(),
      tabletBody: buildDesktopLoginForm(),
      mobileBody: buildMobileLoginForm(),
    );
  }

    Widget buildDesktopLoginForm() {
    return Center(
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: buildMobileLoginForm(),
      ),
    );
  }

  Widget buildMobileLoginForm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: padding16),
          FormWidget(
            controller: widget.usernameController,
            prefixIcon: const Icon(Icons.person_outline_rounded),
            labelText: loginUsernameLabel,
            hintText: loginUsernameHint,
          ),
          const SizedBox(height: padding16),
          PasswordFormWidget(
            labelText: loginPasswordLabel,
            hintText: loginUsernameHint,
            controller: widget.passwordController,
          ),
          const SizedBox(height: padding16),
        ],
      ),
    );
  }
}
