//container içeriklerindeki küçük containerlar
import 'package:flutter/material.dart';

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
          border: Border.all(),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
            ),
          ],
        ),
        child: Text(
          competence,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20),
        ));
  }
}

