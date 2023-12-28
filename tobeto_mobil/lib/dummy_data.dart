import 'package:tobeto_mobil/models/announcement_model.dart';
import 'package:tobeto_mobil/models/application_model.dart';
import 'package:tobeto_mobil/models/education_model.dart';
import 'package:tobeto_mobil/models/exam_model.dart';

final List<EducationModel> educationModelData = [
  EducationModel(
    id: "1",
    title: "Something",
    time: "Some Time",
    thumbnail: "assets/images/ders1.jpg",
  ),
    EducationModel(
    id: "2",
    title: "SomeOther",
    time: "Some Time",
    thumbnail: "assets/images/ders2.png",
  ),
];

final List<ApplicationModel> applicationModelData = [
  ApplicationModel(
    id: "1",
    state: "Kabul Edildi",
    title: "İstanbul Kodluyor Bilgilendirme",
    text1: "İstanbul Kodluyor başvuru formu onaylandı.",
    text2: "İstanbul Kodluyor belge yükleme formu onaylandı.",
  ),
  ApplicationModel(
    id: "1",
    state: "Kabul Edildi",
    title: "İstanbul Kodluyor Bilgilendirme",
    text1: "İstanbul Kodluyor başvuru formu onaylandı.",
    text2: "İstanbul Kodluyor belge yükleme formu onaylandı.",
  ),
];

final List<ExamModel> examModelData = [
  ExamModel(
    "Herkes için Kodlama 1C Değerlendirme Sınavı",
    "Herkes için Kodlama - 1C",
    "45 dakika",
    id: "1",
  ),
];

final List<AnnouncementModel> announcementModelData = [
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
];
