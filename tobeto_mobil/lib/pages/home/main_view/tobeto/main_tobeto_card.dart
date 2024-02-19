import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/models/firebase_models/tobeto_announcement_model.dart';

class MainTobetoCard extends StatelessWidget {
  const MainTobetoCard({super.key, required this.tobetoNewsModel});
  final TobetoNewsModel tobetoNewsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).appBarTheme.backgroundColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(),
        boxShadow: [
          containerBasicShadow(),
          containerBasicShadow(),
        ],
      ),
      child: Column(
        children: [
          Text(tobetoNewsModel.title),
          Text(tobetoNewsModel.content),
        ],
      ),
    );
  }
}
