import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_event.dart';
import 'package:tobeto_mobil/constants/pages/login_text.dart';
import 'package:tobeto_mobil/core/widgets/form_widget.dart';
import 'package:tobeto_mobil/core/widgets/password_form_widget.dart';
import 'package:tobeto_mobil/pages/entry_pages/login/login_buttons.dart';
import 'package:tobeto_mobil/utils/responsive/responsive_layout.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ResponsiveLayout(
        desktopBody: buildDesktopLoginForm(),
        tabletBody: buildDesktopLoginForm(),
        mobileBody: buildMobileLoginForm(),
      ),
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          FormWidget(
            controller: emailController,
            prefixIcon: const Icon(Icons.person_outline_rounded),
            labelText: loginUsernameLabel,
            hintText: loginUsernameHint,

          ),
          const SizedBox(height: 16),
          PasswordFormWidget(
            labelText: loginPasswordLabel,
            hintText: loginUsernameHint,
            controller: passwordController,
          ),
          const SizedBox(height: 16),
          LoginButtons(
            onPressed: () {
              _formKey.currentState!.save();
              context.read<AuthBloc>().add(AuthEventLogin(
                email: emailController.text,
                password: passwordController.text,
              ));

              //if successfull go to home screen
            },
          ),
        ],
      ),
    );
  }
}
