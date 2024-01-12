import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/models/announcement_model.dart';
import 'package:tobeto_mobil/models/application_model.dart';
import 'package:tobeto_mobil/models/catalog_model.dart';
import 'package:tobeto_mobil/models/education_model.dart';
import 'package:tobeto_mobil/models/exam_model.dart';
import 'package:tobeto_mobil/models/survey_model.dart';

final List<EducationModel> educationModelData = [
  EducationModel(
    id: "1",
    title: "Something",
    category: "Genel",
    hour: 120,
    kickOffDate: "12/28/2023 12:20",
    endDate: "31/12/2023 23:59",
    likes: 5,
    thumbnail: ders1,
    content: [],
    creator: "Kurum ici uretim",
  ),
  EducationModel(
    id: "2",
    title: "SomeOther1",
    category: "Genel",
    hour: 120,
    kickOffDate: "12/28/2023 12:20",
    endDate: "31/12/2023 23:59",
    likes: 15,
    thumbnail: ders2,
    content: [],
    creator: "Kurum ici uretim",
  ),
  EducationModel(
    id: "3",
    title: "SomeOther2",
    category: "Genel",
    hour: 120,
    kickOffDate: "12/28/2023 12:20",
    endDate: "31/12/2023 23:59",
    likes: 25,
    thumbnail: ders1,
    content: [],
    creator: "Kurum ici uretim",
  ),
  EducationModel(
    id: "4",
    title: "SomeOther3",
    category: "Genel",
    hour: 120,
    kickOffDate: "12/28/2023 12:20",
    endDate: "31/12/2023 23:59",
    likes: 35,
    thumbnail: ders1,
    content: [],
    creator: "Kurum ici uretim",
  ),
  EducationModel(
    id: "5",
    title: "SomeOther4",
    category: "Genel",
    hour: 120,
    kickOffDate: "12/28/2023 12:20",
    endDate: "31/12/2023 23:59",
    likes: 45,
    thumbnail: ders2,
    content: [],
    creator: "Kurum ici uretim",
  ),
];

final List<SurveyModel> surveyModelData = [
  SurveyModel(id: "1"),
  SurveyModel(id: "2"),
  SurveyModel(id: "3"),
  SurveyModel(id: "4"),
  SurveyModel(id: "5"),
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
    id: "2",
    state: "Kabul Edildi",
    title: "İstanbul Kodluyor Bilgilendirme",
    text1: "İstanbul Kodluyor başvuru formu onaylandı.",
    text2: "İstanbul Kodluyor belge yükleme formu onaylandı.",
  ),
  ApplicationModel(
    id: "3",
    state: "Kabul Edildi",
    title: "İstanbul Kodluyor Bilgilendirme",
    text1: "İstanbul Kodluyor başvuru formu onaylandı.",
    text2: "İstanbul Kodluyor belge yükleme formu onaylandı.",
  ),
  ApplicationModel(
    id: "4",
    state: "Kabul Edildi",
    title: "İstanbul Kodluyor Bilgilendirme",
    text1: "İstanbul Kodluyor başvuru formu onaylandı.",
    text2: "İstanbul Kodluyor belge yükleme formu onaylandı.",
  ),
  ApplicationModel(
    id: "5",
    state: "Kabul Edildi",
    title: "İstanbul Kodluyor Bilgilendirme",
    text1: "İstanbul Kodluyor başvuru formu onaylandı.",
    text2: "İstanbul Kodluyor belge yükleme formu onaylandı.",
  ),
];

final List<ExamModel> examModelData = [
  ExamModel(
    id: "1",
    title: "Herkes için Kodlama 1C Değerlendirme Sınavı",
    detail: "Herkes için Kodlama - 1C",
    duration: "5 dakika",
  ),
  ExamModel(
    id: "2",
    title: "Herkes için Kodlama 2C Değerlendirme Sınavı",
    detail: "Herkes için Kodlama - 2C",
    duration: "15 dakika",
  ),
  ExamModel(
    id: "3",
    title: "Herkes için Kodlama 3C Değerlendirme Sınavı",
    detail: "Herkes için Kodlama - 3C",
    duration: "25 dakika",
  ),
  ExamModel(
    id: "4",
    title: "Herkes için Kodlama 4C Değerlendirme Sınavı",
    detail: "Herkes için Kodlama - 4C",
    duration: "35 dakika",
  ),
  ExamModel(
    id: "5",
    title: "Herkes için Kodlama 5C Değerlendirme Sınavı",
    detail: "Herkes için Kodlama - 5C",
    duration: "45 dakika",
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
    id: "2",
    date: "24.11.2023",
    organisation: "İstanbul Kodluyor",
    title: "4 Aralık Online Hoşgeldin Buluşması",
    type: "Duyuru",
  ),
  AnnouncementModel(
    id: "3",
    date: "23.11.2023",
    organisation: "İstanbul Kodluyor",
    title: "Önemli Bilgilendirme",
    type: "Duyuru",
  ),
  AnnouncementModel(
    id: "4",
    date: "17.11.2023",
    organisation: "İstanbul Kodluyor",
    title: "Yeni Gelenler için Bilgilendirme",
    type: "Duyuru",
  ),
  AnnouncementModel(
    id: "5",
    date: "4.11.2023",
    organisation: "İstanbul Kodluyor",
    title: "25 Kasım Kampüs Buluşması",
    type: "Duyuru",
  ),
  AnnouncementModel(
    id: "6",
    date: "30.10.2023",
    organisation: "İstanbul Kodluyor",
    title: "3. Gruplar için Bilgilendirme",
    type: "Duyuru",
  ),
];

final List<CatalogModel> catalogModelData = [
  CatalogModel(
    id: "1",
    title: "Dinle, Anla, İfade Et: Etkili İletişim Gelişim Yolculuğu",
    totalDuration: "4s 14dk",
    trainer: "Gürkan İlişen",
    thumbnail: catalog1,
  ),
  CatalogModel(
    id: "2",
    title: "Sürdürülebilir Bir Dünya için Bireysel Farkındalık",
    totalDuration: "40dk",
    trainer: "Gürkan İlişen",
    thumbnail: catalog2,
  ),
  CatalogModel(
    id: "3",
    title: "Hibrit Yaşamda Duyguyu Düzenleme",
    totalDuration: "53dk",
    trainer: "Gürkan İlişen",
    thumbnail: catalog1,
  ),
  CatalogModel(
    id: "4",
    title: "Web Sayfası Tasarımı Nasıl Oluşturulur? - HTML ",
    totalDuration: "2s 14dk",
    trainer: "Gürkan İlişen",
    thumbnail: catalog2,
  ),
  CatalogModel(
    id: "5",
    title: "Programlamanın Tarihçesi ve Gelişimi",
    totalDuration: "1s",
    trainer: "Gürkan İlişen",
    thumbnail: catalog2,
  ),
  CatalogModel(
    id: "1",
    title: "Dinle, Anla, İfade Et: Etkili İletişim Gelişim Yolculuğu",
    totalDuration: "4s 14dk",
    trainer: "Gürkan İlişen",
    thumbnail: catalog1,
  ),
  CatalogModel(
    id: "2",
    title: "Sürdürülebilir Bir Dünya için Bireysel Farkındalık",
    totalDuration: "40dk",
    trainer: "Gürkan İlişen",
    thumbnail: catalog2,
  ),
  CatalogModel(
    id: "3",
    title: "Hibrit Yaşamda Duyguyu Düzenleme",
    totalDuration: "53dk",
    trainer: "Gürkan İlişen",
    thumbnail: catalog1,
  ),
  CatalogModel(
    id: "4",
    title: "Web Sayfası Tasarımı Nasıl Oluşturulur? - HTML ",
    totalDuration: "2s 14dk",
    trainer: "Gürkan İlişen",
    thumbnail: catalog2,
  ),
  CatalogModel(
    id: "5",
    title: "Programlamanın Tarihçesi ve Gelişimi",
    totalDuration: "1s",
    trainer: "Gürkan İlişen",
    thumbnail: catalog2,
  ),
];
