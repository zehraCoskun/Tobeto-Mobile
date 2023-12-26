import 'package:flutter/material.dart';
import 'package:tobeto_mobil/consts/constants.dart';
import 'package:tobeto_mobil/screens/home_screen/widgets/announcement_item_widget.dart';

class AnnouncementWidget extends StatelessWidget {
  const AnnouncementWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: padding16),
      child: Center(
        child: ListView(
          children: const [
            AnnouncementItemWidget(
                type: "Duyuru", organisation: "İstanbul Kodluyor", title: "Yeni Grupların Discord'a Katılımı", publicationDate: "2023-12-26"),
            AnnouncementItemWidget(
                type: "Duyuru", organisation: "İstanbul Kodluyor", title: "Yeni Grupların Discord'a Katılımı", publicationDate: "2023-12-26"),
            AnnouncementItemWidget(
                type: "Duyuru", organisation: "İstanbul Kodluyor", title: "Yeni Grupların Discord'a Katılımı", publicationDate: "2023-12-26"),
            AnnouncementItemWidget(
                type: "Duyuru", organisation: "İstanbul Kodluyor", title: "Yeni Grupların Discord'a Katılımı", publicationDate: "2023-12-26"),
            AnnouncementItemWidget(
                type: "Duyuru", organisation: "İstanbul Kodluyor", title: "Yeni Grupların Discord'a Katılımı", publicationDate: "2023-12-26"),
            AnnouncementItemWidget(
                type: "Duyuru", organisation: "İstanbul Kodluyor", title: "Yeni Grupların Discord'a Katılımı", publicationDate: "2023-12-26"),
          ],
        ),
      ),
    );
  }
}