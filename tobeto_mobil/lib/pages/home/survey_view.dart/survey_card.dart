import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SurveyCard extends StatelessWidget {
  const SurveyCard({
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
            "https://lottie.host/a20e84e5-14bf-427b-b18a-79b409fbe1b6/C7azsyk4R7.json",
            height: size.height * 0.4,
          ),
        ),
        const Text("Atanmış herhangi bir anketiniz bulunmamaktadır")
      ],
    );
  }
}
