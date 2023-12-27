import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/announcement_model.dart';
import 'package:tobeto_mobil/pages/home/announcement_view.dart/announcement_card.dart';

class AnnouncementList extends StatelessWidget {
  const AnnouncementList({
    Key? key,
    required this.announcementList,
  }) : super(key: key);

  final List<AnnouncementModel> announcementList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: announcementList.length,
      itemBuilder: (context, index) {
        return AnnouncementCard(
          announcement: announcementList[index],
        );
      },
    );
  }
}
