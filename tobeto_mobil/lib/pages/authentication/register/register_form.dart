import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_event.dart';
import 'package:tobeto_mobil/constants/pages/auth_text.dart';
import 'package:tobeto_mobil/core/widgets/form_field/form_widget.dart';
import 'package:tobeto_mobil/core/widgets/form_field/password_form_widget.dart';
import 'package:tobeto_mobil/utils/extensions.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late GlobalKey<FormState> _formKey;
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    repeatPasswordController.dispose();
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Form(
      key: _formKey,
      child: SizedBox(
        width: size.width < 700 ? size.width * 0.9 : 700,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildNameField(),
            buildSurnameField(),
            buildEmailField(),
            buildPasswordField(),
            buildRepeatPasswordField(),
            buildRegisterButton(),
          ],
        ).seperated(height: 10),
      ),
    );
  }

  Widget buildNameField() {
    return FormWidget(
      controller: nameController,
      prefixIcon: const Icon(Icons.person_outline_outlined),
      labelText: registerNameLabel,
      onSaved: (value) => nameController.text = value ?? "",
      validator: (value) {
        if (value!.isEmpty) {
          return nameEmptyFieldText;
        }
        return null;
      },
    );
  }

  Widget buildSurnameField() {
    return FormWidget(
      controller: surnameController,
      prefixIcon: const Icon(Icons.person_outline_outlined),
      labelText: registerSurnameLabel,
      onSaved: (value) => surnameController.text = value ?? "",
      validator: (value) {
        if (value!.isEmpty) {
          return surNameEmptyFieldText;
        }
        return null;
      },
    );
  }

  Widget buildEmailField() {
    return FormWidget(
      controller: emailController,
      prefixIcon: const Icon(Icons.email_outlined),
      labelText: authEmailLabel,
      onSaved: (value) => emailController.text = value ?? "",
      validator: (value) {
        if (value!.isEmpty) {
          return emailEmptyFieldText;
        }
        if (!value.contains("@")) {
          return emailWrongFormatFieldText;
        }
        if (value.length < 10) {
          return emailLengthLessThanXFieldText;
        }
        return null;
      },
    );
  }

  Widget buildPasswordField() {
    return PasswordFormWidget(
      controller: passwordController,
      labelText: authPasswordLabel,
      onChanged: (newValue) => passwordController.text = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          return passwordEmptyFieldText;
        }
        return null;
      },
    );
  }

  Widget buildRepeatPasswordField() {
    return PasswordFormWidget(
      controller: repeatPasswordController,
      labelText: registerRepeatPasswordLabel,
      onChanged: (newValue) => repeatPasswordController.text = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          return passwordEmptyFieldText;
        }
        if (value != passwordController.text) {
          return passwordMismatchFieldText;
        }
        return null;
      },
    );
  }

  Widget buildRegisterButton() {
    return ElevatedButton(
      onPressed: () {
        final result = _formKey.currentState?.validate();
        if (result != null && result) {
          _formKey.currentState!.save();
          context.read<AuthBloc>().add(
                AuthEventRegister(
                  fullName: "${nameController.text} ${surnameController.text}".toTitleCase(),
                  email: emailController.text,
                  password: passwordController.text,
                ),
              );
          Navigator.of(context).pop();
        }
      },
      child: const Text(authRegisterButtonText),
    );
  }
}