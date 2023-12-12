import 'package:flutter/material.dart';
import 'package:tobeto_mobil/colors/tobeto_colors.dart';
import 'package:tobeto_mobil/consts/constants.dart';

import 'form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: MyColors.otherColor.withOpacity(0.6),
        child: ClipPath(
          clipper: MyCustomClipper(),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                MyColors.mainColor,
                MyColors.otherColor.withAlpha(100),
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipPath(
                  clipper: MyCustomClipper(),
                ),
                Image(
                  image: const AssetImage("assets/images/tobeto-logo.png"),
                  height: size.height * 0.1,
                ),
                const FormWidget(
                  prefixIcon: Icon(Icons.person),
                  labelText: loginUsernameLabel,
                  hintText: loginUsernameHint,
                  isPassword: false,
                ),
                const SizedBox(height: 16),
                FormWidget(
                  prefixIcon: const Icon(Icons.password),
                  labelText: loginPasswordLabel,
                  hintText: loginPasswordHint,
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.remove_red_eye_sharp),
                    onPressed: () {},
                  ),
                  isPassword: true,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(MyColors.mainTextColor),
                      ),
                      child: const Text(loginForgotText),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(horizontal: 40), textStyle: const TextStyle(fontSize: 20)),
                      child: const Text(loginButtonText),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.85);
    path.quadraticBezierTo(size.width * 0.56, size.height * 1, size.width * 1, size.height * 0.85);
    path.quadraticBezierTo(size.width * 1, size.height * 1, size.width * 1, size.height * 1);
    path.lineTo(size.width, 1);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
