import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/background_widget.dart';
import 'package:tobeto_mobil/pages/login/login_buttons.dart';
import 'package:tobeto_mobil/pages/login/login_form.dart';
import 'package:tobeto_mobil/pages/login/login_footer.dart';
import 'package:tobeto_mobil/pages/login/login_header.dart';
import 'package:tobeto_mobil/core/widgets/clipper_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          BackgroundWidget(
            clipper: ClipperWidget(),
          ),

          const LoginHeader(),

          buildBody(
            usernameController,
            passwordController,
          ),

          //BackgroundWidget'dan sonra olmak zorunda yoksa stack altinda kalir
          const LoginFooter(),
        ],
      ),
    );
  }

  Widget buildBody(
    TextEditingController usernameController,
    TextEditingController passwordController,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LoginForm(
          usernameController: usernameController,
          passwordController: passwordController,
        ),
        const LoginButtons(),
      ],
    );
  }
}
