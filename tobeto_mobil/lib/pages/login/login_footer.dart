import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
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
