//kişisel bilgiler satırı
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class PersonalInfoRowWidget extends StatelessWidget {
  const PersonalInfoRowWidget({
    super.key,
    required this.title,
    required this.content,
    required this.contentIcon,
  });
  final String title;
  final String content;
  final IconData contentIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              contentIcon,
              size: 26,
              color: TobetoDarkColors.lacivert,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: TobetoLightColors.acikSiyah, fontSize: 10),
              ),
              Text(
                content,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}