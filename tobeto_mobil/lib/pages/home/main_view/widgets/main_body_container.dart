import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/models/firebase_models/announcement_model.dart';
import 'package:tobeto_mobil/pages/home/main_view/widgets/main_page_container.dart';

class MainBodyContainer extends StatelessWidget {
  const MainBodyContainer({
    super.key,
    this.announcement,
    this.title,
  });
  final AnnouncementModel? announcement;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        MainPageContainer(
          widget: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [containerBasicShadow()],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(mainEmptyHeaderDataImage),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    announcement?.title ?? title!,
                    softWrap: true,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
