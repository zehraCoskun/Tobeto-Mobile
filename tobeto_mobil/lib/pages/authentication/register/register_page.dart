import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/widgets/primary_background.dart';
import 'package:tobeto_mobil/pages/authentication/register/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          const PrimaryBackgroundWidget(),
          buildLogo(context),
          const RegisterForm(),
        ],
      ),
    );
  }

  Widget buildLogo(BuildContext context) {
    return Positioned(
      top: 50,
      child: Image.asset(
        height: kToolbarHeight,
        Theme.of(context).brightness == Brightness.dark
            ? ikLogoLight
            : ikLogoDark,
      ),
    );
  }
}
