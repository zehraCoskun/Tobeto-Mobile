import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/pages/home_page.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/models/announcement_model.dart';

class MainAnnouncementCard extends StatelessWidget {
  const MainAnnouncementCard({
    super.key,
    this.announcement,
  });
  final AnnouncementModel? announcement;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).appBarTheme.backgroundColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(),
          boxShadow: [
            containerBasicShadow(),
            purpleShadow(),
            containerBasicShadow(),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [containerBasicShadow()],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(mainEmptyHeaderDataImage),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  announcement!.title,
                  softWrap: true,
                  style: Theme.of(context).textTheme.titleMedium,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              title: Text(
                announcement!.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              content: SingleChildScrollView(
                child: Text(
                  announcement!.content,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              actions: [
                TextButton(
                  child: const Text(ok),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
