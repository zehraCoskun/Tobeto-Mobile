import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/models/announcement_model.dart';
import 'package:tobeto_mobil/models/application_model.dart';
import 'package:tobeto_mobil/models/education_model.dart';
import 'package:tobeto_mobil/models/exam_model.dart';
import 'package:tobeto_mobil/pages/home/announcement_view.dart/announcement_list.dart';
import 'package:tobeto_mobil/pages/home/application_view.dart/application_list.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_list.dart';
import 'package:tobeto_mobil/pages/home/exam_view.dart/exam_list.dart';
import 'package:tobeto_mobil/pages/home/survey_view.dart/survey_card.dart';

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
              title: "Dr. Ecmel Ayral'dan Hoşgeldin Mesaj",
              time: "21 Eylül 2023",
              thumbnail: "assets/images/ders1.jpg",
            ),
            EducationModel(
              id: "2",
              title: "Eğitimlere Nasıl Katılırım?",
              time: "8 Eylül 2023",
              thumbnail: "assets/images/ders2.png",
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
        ExamList(examList: [ExamModel("Herkes için Kodlama 1C Değerlendirme Sınavı", "Herkes için Kodlama - 1C", "45 dakika", id: "1")]),
        const SurveyCard(),
        ApplicationList(
          applicationList: [
            ApplicationModel(
                id: "1",
                state: "Kabul Edildi",
                title: "İstanbul Kodluyor Bilgilendirme",
                text1: "İstanbul Kodluyor başvuru formu onaylandı.",
                text2: "İstanbul Kodluyor belge yükleme formu onaylandı."),
            ApplicationModel(
                id: "1",
                state: "Kabul Edildi",
                title: "İstanbul Kodluyor Bilgilendirme",
                text1: "İstanbul Kodluyor başvuru formu onaylandı.",
                text2: "İstanbul Kodluyor belge yükleme formu onaylandı.")
          ],
        ),
      ],
    );
  }
}
