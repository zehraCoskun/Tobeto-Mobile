import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tobeto_mobil/constants/image_text.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.topCenter,
      child: Lottie.network(
        loginPageHeaderImage,
        height: size.height * 0.35,
      ),
    );
  }
}
