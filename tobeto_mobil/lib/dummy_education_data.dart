import 'package:tobeto_mobil/models/education/enums/content_model_type.dart';
import 'package:tobeto_mobil/models/education/module_model.dart';
import 'package:tobeto_mobil/models/education/soft_skill_model.dart';
import 'package:tobeto_mobil/models/education/video_model.dart';
import 'package:tobeto_mobil/models/education/virtual_class_model.dart';
import 'package:tobeto_mobil/models/education/virtual_class_session_model.dart';

final module1Data = ModuleModel(
  id: "1",
  title: "Modul 1: Bilisim Teknolojileri Okuryazarligi",
  type: ContentModelType.module,
  content: module1DataContent,
);

final softSkill1Data = SoftSkillModel(
  id: "1",
  title: "Softskill 1: Dijital Donusum",
  type: ContentModelType.softskill,
  content: softSkill1DataContent,
);

final virtualClass3Data = VirtualClassModel(
  id: "1",
  title: "Herkes icin Kodlama Canli Oturum 3",
  type: ContentModelType.virtual,
  isCompleted: false,
  content: virtualClass3DataContent,
);

final dummyEducationData = [
  ModuleModel(
    id: "",
    title: "Modul2",
    type: ContentModelType.module,
    content: [],
  ),
  ModuleModel(
    id: "",
    title: "Modul3",
    type: ContentModelType.module,
    content: [],
  ),
  ModuleModel(
    id: "",
    title: "Modul4",
    type: ContentModelType.module,
    content: [],
  ),
  ModuleModel(
    id: "",
    title: "Modul5",
    type: ContentModelType.module,
    content: [],
  ),
  ModuleModel(
    id: "",
    title: "Modul6",
    type: ContentModelType.module,
    content: [],
  ),
  ModuleModel(
    id: "",
    title: "Modul7",
    type: ContentModelType.module,
    content: [],
  ),
  ModuleModel(
    id: "",
    title: "Modul8",
    type: ContentModelType.module,
    content: [],
  ),
];

final module1DataContent = [
  VideoModel(
    id: "1",
    title: "Dunyada ve turkiye'de bilgisayarin yolculugu",
    type: ContentModelType.video,
    video: "video1",
    thumbnail: "",
    isCompleted: false,
  ),
  VideoModel(
    id: "2",
    title: "Dunyada Bilgisayar Teknolojilerinin Gelecegi",
    type: ContentModelType.video,
    video: "video2",
    thumbnail: "",
    isCompleted: false,
  ),
  VideoModel(
    id: "3",
    title: "Yazilim ve Donanim Nedir?",
    type: ContentModelType.video,
    video: "video3",
    thumbnail: "",
    isCompleted: false,
  ),
  VideoModel(
    id: "4",
    title: "Sayi Sistemlerine Bir Bakis",
    type: ContentModelType.video,
    video: "video4",
    thumbnail: "",
    isCompleted: false,
  ),
  VideoModel(
    id: "5",
    title: "Bilisim Guvenligine Giris",
    type: ContentModelType.video,
    video: "video5",
    thumbnail: "",
    isCompleted: false,
  ),
];

final softSkill1DataContent = [
  VideoModel(
    id: "1",
    title: "Artificial Intelligence(Yapay zeka)",
    type: ContentModelType.video,
    video: "video1",
    thumbnail: "",
    isCompleted: false,
  ),
  VideoModel(
    id: "2",
    title:
        "API- Application Programming Interface (Uygulama Programlama Arayuzu)",
    type: ContentModelType.video,
    video: "video2",
    thumbnail: "",
    isCompleted: false,
  ),
  VideoModel(
    id: "3",
    title: "AR- Augmented Reality (Artirilmis Gerceklik)",
    type: ContentModelType.video,
    video: "video3",
    thumbnail: "",
    isCompleted: false,
  ),
  VideoModel(
    id: "4",
    title: "Beacon",
    type: ContentModelType.video,
    video: "video4",
    thumbnail: "",
    isCompleted: false,
  ),
  VideoModel(
    id: "5",
    title: "BIG DATA (Buyuk Veri)",
    type: ContentModelType.video,
    video: "video5",
    thumbnail: "",
    isCompleted: false,
  ),
];

final virtualClass3DataContent = [
  VirtualClassSessionModel(
    id: "1",
    virtualClassId: "1",
    startDate: "1/1/2023",
    endDate: "2/1/2023",
    language: "Turkce",
    category: "Yazilim",
    subType: "subType",
    isCompleted: false,
    educators: [
      "Ahmet Cetinkaya",
      "Engin Demirog",
      "Gurkan Ilisen",
      "Halit Enes Kalayci"
    ],
  ),
];
