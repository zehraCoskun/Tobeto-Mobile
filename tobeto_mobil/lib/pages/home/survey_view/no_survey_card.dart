import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tobeto_mobil/constants/pages/home_page.dart';

class NoSurveyCard extends StatelessWidget {
  const NoSurveyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Lottie.network(
            noSurveyLink,
            height: size.height * 0.4,
          ),
        ),
        const Text(
          noSurveyText,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
