import 'package:flutter/material.dart';
import 'package:tobeto_mobil/screens/home_screen/widgets/education_item_widget.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: EducationItemWidget(title: "Mobil 1B", time: "21 Eylül 2023 15:20"),
    );
  }
}