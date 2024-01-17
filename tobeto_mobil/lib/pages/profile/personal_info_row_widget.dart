import 'package:flutter/material.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class PersonalInfoRowWidget extends StatelessWidget {
  const PersonalInfoRowWidget({
    Key? key,
    required this.title,
    required this.content,
    required this.contentIcon,
  }) : super(key: key);

  final String title;
  final String content;
  final IconData contentIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Center(
              child: Icon(
                contentIcon,
                size: 26,
                color: TobetoDarkColors.lacivert,
              ),
            ),
          ),
          const SizedBox(width: 8),
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
          ),
        ],
      ),
    );
  }
}
