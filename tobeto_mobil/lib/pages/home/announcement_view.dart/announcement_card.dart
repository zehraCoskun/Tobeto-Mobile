import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/home_text.dart';
import 'package:tobeto_mobil/core/widgets/container_widget.dart';
import 'package:tobeto_mobil/models/announcement_model.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({
    Key? key,
    required this.announcement,
  }) : super(key: key);

  final AnnouncementModel announcement;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 1,
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
        Text(
          announcement.type,
          style: Theme.of(context).textTheme.titleLarge,
        ),
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
          announcement.date,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            readMore,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        )
      ],
    );
  }
}
