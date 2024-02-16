import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoSurveysCard extends StatelessWidget {
  const NoSurveysCard({
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
            "https://lottie.host/3b94c043-6b27-4098-9411-90ef9651273c/C6Tz8FZWci.json",
            height: size.height * 0.4,
          ),
        ),
        const Text(
          "Atanmış herhangi bir anketiniz bulunmamaktadır",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
