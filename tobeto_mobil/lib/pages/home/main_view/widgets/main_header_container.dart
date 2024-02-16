import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class MainHeaderContainer extends StatelessWidget {
  const MainHeaderContainer({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.icon,
  });

  final String title;
  final String imageUrl;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).appBarTheme.backgroundColor!.withAlpha(0),
            borderRadius: BorderRadius.circular(16),
            //border: Border.all(),
            boxShadow: [
              //  basicShadow(),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [containerBasicShadow()],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(imageUrl),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(title,
                      softWrap: true,
                      style: TextStyle(
                        color: TobetoLightColors.lacivert,
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
        ),
      ],
    );
  }
}
