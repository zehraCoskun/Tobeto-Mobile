//container içeriklerindeki küçük containerlar
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/profile/profile_shadow.dart';

class ContentsWidget extends StatelessWidget {
  const ContentsWidget({
    super.key,
    required this.competence,
  });
  final String competence;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          //border: Border.all(),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [ProfileShadow()],
        ),
        child: Text(
          competence,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20),
        ));
  }
}
