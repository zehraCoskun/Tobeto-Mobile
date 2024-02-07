import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/pages/login_text.dart';
import 'package:tobeto_mobil/core/widgets/primary_background.dart';
import 'package:tobeto_mobil/pages/entry_pages/login/login_page.dart';
import 'package:tobeto_mobil/pages/entry_pages/recovery/recovery_page.dart';
import 'package:tobeto_mobil/pages/entry_pages/sign_up/sign_up_buttons.dart';
import 'package:tobeto_mobil/pages/entry_pages/sign_up/sign_up_form.dart';
import 'package:tobeto_mobil/pages/entry_pages/sign_up/sign_up_header.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passwordVisible = false;
  bool passwordVisible2 = false;

  //****************/
  var snackBar = SnackBar(
    backgroundColor: TobetoDarkColors.mor,
    duration: const Duration(seconds: 3),
    content: const Row(
      children: [
        Text(
          "Kayıt olundu.",
        ),
        Icon(
          Icons.check_circle_outline_rounded,
          color: Colors.green,
        ),
      ],
    ),
  );

  void _submit() async {
    _formKey.currentState!.validate();
    _formKey.currentState!.save();
  }

  final _formKey = GlobalKey<FormState>();

  var _ad = '';
  var _soyad = '';
  var _email = '';
  var _password = '';
  var _passwordAgain = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PrimaryBackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
          child: Column(
            children: [
              const SignUpHeader(),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Expanded(
                  child: Column(
                    children: [
                      //**************************************
                      const SignUpForm(),
                      const SizedBox(height: 25),
                      ElevatedButton(
                        onPressed: () {
                          print(_password);
                          print(_passwordAgain);

                          final result = _formKey.currentState!.validate();
                          if (result) {
                            _formKey.currentState?.save();
                            print(_password);
                            print(_passwordAgain);
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        },
                        child: const Text(signUp),
                        style: ElevatedButton.styleFrom(
                            elevation: 20,
                            shadowColor: Colors
                                .blueGrey // Gölge miktarı, ayarlayabilirsiniz
                            ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Zaten bir hesabın var mı ?"),
                      const SignUpTextButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
