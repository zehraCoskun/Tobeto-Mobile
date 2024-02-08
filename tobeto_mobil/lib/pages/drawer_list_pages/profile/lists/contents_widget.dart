//container içeriklerindeki küçük containerlar
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/basic_shadow.dart';

class ContentsWidget extends StatelessWidget {
  const ContentsWidget({
    super.key,
    required this.content,
  });
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          //border: Border.all(),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [basicShadow()],
        ),
        child: Text(
          content,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 20,
              ),
        ));
  }
}
