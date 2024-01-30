import 'package:flutter/material.dart';
import 'package:tobeto_mobil/dummy_data.dart';
import 'package:tobeto_mobil/pages/home_tabbar_pages/announcement_view.dart/announcement_card.dart';

class AnnouncementList extends StatelessWidget {
  const AnnouncementList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: announcementModelData.length,
      itemBuilder: (context, index) {
        return AnnouncementCard(
          announcement: announcementModelData[index],
        );
      },
    );
  }
}
