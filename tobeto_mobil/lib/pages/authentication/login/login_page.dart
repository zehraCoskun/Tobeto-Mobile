import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/clippers/login_clipper.dart';
import 'package:tobeto_mobil/core/widgets/background/primary_background.dart';
import 'package:tobeto_mobil/pages/authentication/login/login_footer.dart';
import 'package:tobeto_mobil/pages/authentication/login/login_form.dart';
import 'package:tobeto_mobil/pages/authentication/login/login_header.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          PrimaryBackgroundWidget(
            clipper: LoginClipper(),
          ),
          const LoginHeader(),
          const LoginForm(),
          const LoginFooter(),
        ],
      ),
    );
  }
}
