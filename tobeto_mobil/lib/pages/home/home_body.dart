import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/models/announcement_model.dart';
import 'package:tobeto_mobil/models/education_model.dart';
import 'package:tobeto_mobil/pages/home/announcement_view.dart/announcement_list.dart';
import 'package:tobeto_mobil/pages/home/application_view.dart/application_card.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: <Widget>[
        EducationList(
          educationList: [
            EducationModel(
              id: "1",
              title: "something lovely",
              time: "some time",
              thumbnail: logo,
            ),
            EducationModel(
              id: "2",
              title: "something lovely2",
              time: "some time ago",
              thumbnail: logoT,
            ),
          ],
        ),
        AnnouncementList(announcementList: [
          AnnouncementModel(
            id: "1",
            date: "27.12.2023",
            organisation: "İstanbul Kodluyor",
            title: "Yeni Grupların Discord'a Katılımı",
            type: "Duyuru",
          ),
          AnnouncementModel(
            id: "1",
            date: "24.11.2023",
            organisation: "İstanbul Kodluyor",
            title: "4 Aralık Online Hoşgeldin Buluşması",
            type: "Duyuru",
          ),
          AnnouncementModel(
            id: "1",
            date: "23.11.2023",
            organisation: "İstanbul Kodluyor",
            title: "Önemli Bilgilendirme",
            type: "Duyuru",
          ),
          AnnouncementModel(
            id: "1",
            date: "17.11.2023",
            organisation: "İstanbul Kodluyor",
            title: "Yeni Gelenler için Bilgilendirme",
            type: "Duyuru",
          ),
          AnnouncementModel(
            id: "1",
            date: "4.11.2023",
            organisation: "İstanbul Kodluyor",
            title: "25 Kasım Kampüs Buluşması",
            type: "Duyuru",
          ),
          AnnouncementModel(
            id: "1",
            date: "30.10.2023",
            organisation: "İstanbul Kodluyor",
            title: "3. Gruplar için Bilgilendirme",
            type: "Duyuru",
          ),
        ]),
        Container(),
        Container(),
        ApplicationCard(),
      ],
    );
  }
}
