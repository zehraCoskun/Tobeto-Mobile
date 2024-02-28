import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_event.dart';
import 'package:tobeto_mobil/constants/pages/auth_text.dart';
import 'package:tobeto_mobil/constants/route_names.dart';
import 'package:tobeto_mobil/core/widgets/form_field/form_widget.dart';
import 'package:tobeto_mobil/core/widgets/form_field/password_form_widget.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late GlobalKey<FormState> _formKey;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: Form(
        key: _formKey,
        child: SizedBox(
          width: size.width < 700 ? size.width * 0.9 : 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FormWidget(
                controller: emailController,
                prefixIcon: const Icon(Icons.person_outline_outlined),
                labelText: authEmailLabel,
              ),
              const SizedBox(height: 5),
              PasswordFormWidget(
                controller: passwordController,
                labelText: authPasswordLabel,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  buildRecoveryButton(),
                  buildRegisterButton(),
                ],
              ),
              buildLoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRecoveryButton() {
    return Flexible(
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.RECOVERY);
        },
        style: Theme.of(context).textButtonTheme.style,
        child: const Text(
          loginForgotButtonText,
          overflow: TextOverflow.visible,
          maxLines: 1,
        ),
      ),
    );
  }

  Widget buildRegisterButton() {
    return Flexible(
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.REGISTER);
        },
        style: Theme.of(context).textButtonTheme.style,
        child: const Text(
          authRegisterButtonText,
          overflow: TextOverflow.visible,
          maxLines: 1,
        ),
      ),
    );
  }

  Widget buildLoginButton() {
    return Flexible(
      child: ElevatedButton(
        onPressed: () {
          _formKey.currentState!.save();
          context.read<AuthBloc>().add(
                AuthEventLogIn(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                ),
              );
        },
        style: Theme.of(context).elevatedButtonTheme.style,
        child: const Text(
          loginButtonText,
          overflow: TextOverflow.visible,
          maxLines: 1,
        ),
      ),
    );
  }
}
