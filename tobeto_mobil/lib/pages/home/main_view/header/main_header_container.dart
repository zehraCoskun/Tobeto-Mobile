import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/home_page.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class MainHeaderContainer extends StatelessWidget {
  const MainHeaderContainer({
    super.key,
    required this.firstName,
  });

  final String firstName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 10,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [TobetoDarkColors.lacivert, TobetoDarkColors.mor],
        ),
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
        boxShadow: [containerBasicShadow(), purpleShadow(), containerBasicShadow()],
      ),
      child: Text(
        "$mainHeaderTitle $firstName!",
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
