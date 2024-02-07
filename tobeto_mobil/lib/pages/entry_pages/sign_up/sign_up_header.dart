import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ],
        ),
        Image.asset(
          height: kToolbarHeight,
          Theme.of(context).brightness == Brightness.dark
              ? ikLogoLight
              : ikLogoDark,
        ),
      ],
    );
  }
}
