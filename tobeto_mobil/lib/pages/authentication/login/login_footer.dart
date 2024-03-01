import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.bottomLeft,
      width: size.width * 0.8,
      padding: const EdgeInsets.only(left: 40, bottom: 20),
      child: Image(
        image: const AssetImage(logo),
        color: Theme.of(context).colorScheme.onError,
      ),
    );
  }
}
