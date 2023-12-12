import 'package:flutter/material.dart';
import 'package:tobeto_mobil/colors/tobeto_colors.dart';
import 'package:tobeto_mobil/widgets/clipper_background_widdget.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        ),
      ),
    );
  }
}
