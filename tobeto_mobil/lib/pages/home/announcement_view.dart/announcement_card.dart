import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/home_text.dart';
import 'package:tobeto_mobil/constants/sizes.dart';
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
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: padding16, vertical: padding16 / 2),
          padding: const EdgeInsets.symmetric(horizontal: padding16, vertical: padding16 / 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).cardColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(4, 4), // Sol üst köşeden ışık vurmuş gibi efekt için negatif değerler kullanılır.
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildHeader(context),
              buildBody(),
              buildFooter(),
            ],
          ),
        ));
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
        )
      ],
    );
  }

  Widget buildBody() {
    return Text(
      announcement.title,
      style: const TextStyle(fontSize: 18),
    );
  }

  Widget buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(announcement.date),
        const Text(
          readMore,
          style: TextStyle(
            fontStyle: FontStyle.italic,
          ),
        )
      ],
    );
  }
}
