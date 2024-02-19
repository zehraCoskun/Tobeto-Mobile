import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/widgets/background/new_background.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class MainHeaderContainer extends StatelessWidget {
  const MainHeaderContainer({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return NewBackground(children: [
      Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 8),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                purpleShadow(),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(mainEmptyHeaderDataImage),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(title,
                  softWrap: true,
                  style: TextStyle(
                    color: TobetoLightColors.beyaz,
                    fontWeight: FontWeight.w500,
                    wordSpacing: 2.0,
                    height: 2,
                    shadows: [
                      announcementTitleShadow(),
                      announcementTitleShadow(),
                    ],
                  )),
            ),
          )
        ],
      ),
    ]);
  }
}
