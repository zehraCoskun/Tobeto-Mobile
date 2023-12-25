import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tobeto_mobil/authentication/login/login_buttons_widget.dart';
import 'package:tobeto_mobil/consts/constants.dart';
import 'package:tobeto_mobil/core/widgets/background_widget.dart';
import 'package:tobeto_mobil/core/widgets/form_widget.dart';
import 'package:tobeto_mobil/core/widgets/password_form_widget.dart';
import 'package:tobeto_mobil/utils/responsive/responsive_layout.dart';
import 'package:tobeto_mobil/widgets/clipper_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //username ve passwordlarin uzerinde islem yapabilmemiz icin gerekli
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          BackgroundWidget(
            clipper: ClipperWidget(),
          ),
          ResponsiveLayout(
            mobileBody: buildMobileLoginForm(),
            desktopBody: buildDesktopLoginForm(),
          ),
          buildHeaderAnimation(size),

          //BackgroundWidget'dan sonra olmak zorunda yoksa stack altinda kalir
          buildFooterLogo(context),
        ],
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
