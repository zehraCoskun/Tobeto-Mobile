import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tobeto_mobil/authentication/login/login_form_widget.dart';
import 'package:tobeto_mobil/consts/constants.dart';
import 'package:tobeto_mobil/core/widgets/background_widget.dart';
import 'package:tobeto_mobil/widgets/clipper_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //username ve passwordlarin uzerinde islem yapabilmemiz icin gerekli
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          BackgroundWidget(
            clipper: ClipperWidget(),
          ),
          LoginFormWidget(
            usernameController: usernameController,
            passwordController: passwordController,
          ),
          buildHeaderAnimation(size),

          //BackgroundWidget'dan sonra olmak zorunda yoksa stack altinda kalir
          buildFooterLogo(context),
        ],
      ),
    );
  }

  Widget buildHeaderAnimation(Size size) {
    return Align(
      alignment: Alignment.topCenter,
      child: Lottie.network(
        "https://lottie.host/a20e84e5-14bf-427b-b18a-79b409fbe1b6/C7azsyk4R7.json",
        height: size.height * 0.4,
      ),
    );
  }

  Widget buildFooterLogo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding16),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Image(
          image: const AssetImage(logo),
          color: Theme.of(context).colorScheme.onError,
        ),
      ),
    );
  }
}
