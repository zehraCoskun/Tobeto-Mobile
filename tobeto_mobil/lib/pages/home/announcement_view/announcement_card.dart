import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/home_page.dart';
import 'package:tobeto_mobil/core/widgets/container_widget.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/models/firebase_models/announcement_model.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({
    Key? key,
    required this.announcement,
  }) : super(key: key);

  final AnnouncementModel announcement;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 1,
      child: ContainerWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildHeader(context),
            buildBody(context),
            buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(announcement.type,
            style: TextStyle(
              color: TobetoDarkColors.beyaz,
              fontWeight: FontWeight.bold,
              height: 2,
              shadows: [
                announcementTitleShadow(),
                announcementTitleShadow(),
              ],
            )),
        Text(
          announcement.organisation,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }

  Widget buildBody(BuildContext context) {
    return Text(
      announcement.title,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }

  Widget buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          _formatDate(announcement.date),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: TobetoDarkColors.lacivert,
                  title: Text(
                    announcement.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  content: SingleChildScrollView(
                    child: Text(
                      announcement.content,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  actions: [
                    TextButton(
                      child: const Text(ok),
                      onPressed: () {
                        Navigator.of(context).pop(); // AlertDialog'u kapat
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: Text(
            announcementReadMore,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        )
      ],
    );
  }

  String _formatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }
}
