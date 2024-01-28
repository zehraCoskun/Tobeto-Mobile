import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/dummy_education_data.dart';
import 'package:tobeto_mobil/models/announcement_model.dart';
import 'package:tobeto_mobil/models/application_model.dart';
import 'package:tobeto_mobil/models/catalog_model.dart';
import 'package:tobeto_mobil/models/education/education_model.dart';
import 'package:tobeto_mobil/models/education/enums/education_status.dart';
import 'package:tobeto_mobil/models/exam_model.dart';
import 'package:tobeto_mobil/models/survey_model.dart';
import 'package:tobeto_mobil/models/review_model.dart';

final List<EducationModel> educationModelData = [
  EducationModel(
    id: "1",
    userId: "1",
    title: "Ders 1",
    category: "Genel",
    thumbnail: ders1,
    startDate: "1/1/1",
    endDate: "1/1/1",
    creator: "Enocta",
    status: EducationStatus.started,
    content: [
      module1Data,
      softSkill1Data,
      virtualClass3Data,
      ...dummyEducationData,
    ],
  ),
  EducationModel(
    id: "2",
    userId: "2",
    title: "Ders 2",
    category: "Genel",
    thumbnail: ders1,
    startDate: "1/1/1",
    endDate: "1/1/1",
    creator: "Enocta",
    status: EducationStatus.started,
    content: [
      module1Data,
      softSkill1Data,
      virtualClass3Data,
      ...dummyEducationData,
    ],
  ),
  EducationModel(
    id: "3",
    userId: "3",
    title: "Ders 3",
    category: "Genel",
    thumbnail: ders1,
    startDate: "1/1/1",
    endDate: "1/1/1",
    creator: "Enocta",
    status: EducationStatus.started,
    content: [
      module1Data,
      softSkill1Data,
      virtualClass3Data,
      ...dummyEducationData,
    ],
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
    content: """Merhabalar,\n\n Herkes için Kodlama 4A grubunun discorda katılımı yarın gerçekleşecek olan Mentor oturumu sonrası yapılacaktır.\n
 Mentor oturumuna Eğitimlerim bölümünden giriş yapabilirsiniz.""",
    type: "Duyuru",
  ),
  AnnouncementModel(
    id: "2",
    date: "24.11.2023",
    organisation: "İstanbul Kodluyor",
    title: "4 Aralık Online Hoşgeldin Buluşması",
    content: """Sevgili İstanbul Kodluyor'lu,\n
 4 Aralık Pazartesi günü saat 11.00'de aramıza yeni katılanlar adaylar ile online olarak bir araya geleceğimiz için heyecanlıyız.\n
 İlk etapta tüm süreci birlikte konuşup, neler yapmanız gerektiğini adım adım anlatacağız. "Eğitimlerim" bölümündeki size tanımlanmış videoları izleyebilirsiniz. "Eğitime Git" butonuna tıklayarak online oturumların saatini ve içeriğini görebilirsiniz. Online oturumlara saati geldiğinde ilgili yerden tıklayarak katılabilirsiniz.\n
 Ayrıca bir mail gönderilmeyecektir.\n
 Hoşgeldin Buluşması-4 etkinliğine katılımınızı bekliyoruz. Platformu takip etmek adayların sorumluluğundadır.\n
Not: Eğer "Eğitimlerim" bölümünde size atanmış Hoşgeldin Buluşması- 4 başlığını görmüyorsanız, 2 Aralık cumartesiye kadar beklemenizi rica ederiz. 2 Aralık günü hala göremiyorsanız istanbulkodluyor@tobeto.com adresine mail atabilirsiniz.\n
Sevgiler\n

TOBETO | İstanbulKodluyor""",
    type: "Duyuru",
  ),
  AnnouncementModel(
    id: "3",
    date: "23.11.2023",
    organisation: "İstanbul Kodluyor",
    title: "Önemli Bilgilendirme",
    content: """Sevgili İstanbul Kodluyor'lu,\n
 Eğitime hiç başlamamış adaylar kampüs buluşmalarına katılmıyor.\n
 Bir önceki duyuruda bahsettiğimiz gibi yeni gelenlerin tek yapacağı şey 4 Aralık pazartesi saat 11.00'de online "Hoşgeldin Buluşmasına" katılmak.\n
 Yanlışlıkla kampüs buluşmasına gelmemeniz için tekrar hatırlatmak isteriz.\n
Sevgiler,\n
TOBETO Ekibi""",
    type: "Duyuru",
  ),
  AnnouncementModel(
    id: "4",
    date: "17.11.2023",
    organisation: "İstanbul Kodluyor",
    title: "Yeni Gelenler için Bilgilendirme",
    content: """Sevgili İstanbul Kodluyor'lu,\n
Aramıza hoşgeldin.\n
Her yeni katılan grubun belli tarihlerde başlangıç zamanı oluyor. Sıradaki grubumuz 4 Aralık'ta başlayacak.\n
"Online Hoşgeldin Buluşması 4" ile tüm süreci anlatacağız. 4 Aralık tarihine kadar yapman gereken birşey bulunmuyor.\n
 Senden önceki gruplar şu an farklı aşamalarda olduğu için kafa karışıklığı yaşaman normal, tüm aşamaları anlatacağız merak etme :)\n
4 Aralık saat 11.00'de seninle online olarak tanışmak için sabırsızlanıyoruz.\n
Sevgiler,\n
TOBETO Ekibi""",
    type: "Duyuru",
  ),
  AnnouncementModel(
    id: "5",
    date: "4.11.2023",
    organisation: "İstanbul Kodluyor",
    title: "25 Kasım Kampüs Buluşması",
    content: """ Herkes için Kodlama eğitimi sonrası kampüs buluşmamız 25 Kasım 2023 tarihinde Üsküdar Üniversitesi'nde gerçekleşecektir.\n
 Saat:10:30-12:30\n
Adres:Mimar Sinan, Selmani Pak Cd., 34672 Üsküdar/İstanbul\n
 Toplu Taşıma ile ulaşım: Marmaray'ın Üsküdar durağında indikten sonra 4-5 dakika yürüyerek kampüse ulaşabilirsin.
Bu buluşmaya katılacak adaylar aşağıdaki formu doldurmalıdır. Kampüste ayrıca gelenlerin yoklaması alınacaktır.\n
Not: Bu buluşmaya katılmayan adaylar mesleki eğitime atanamayacaktır.\n
Form: https://form.jotform.com/233061833026953\n\n
Sevgiler,""",
    type: "Duyuru",
  ),
  AnnouncementModel(
    id: "6",
    date: "30.10.2023",
    organisation: "İstanbul Kodluyor",
    title: "3. Gruplar için Bilgilendirme",
    content: """Sevgili İstanbul Kodluyor’lu,\n
 Bu programda yer aldığın için tebrik ederiz. Tekrar aramıza hoşgeldin!\n
 Yazılım ve teknoloji kariyerindeki önemli bir adımı bugün atmış oldun. Yeni kariyer yolculuğunda Tobeto Ekibi olarak her zaman yanında olacağımızı bilmeni isteriz.

 Öncelikle oturumda en çok sorulan öğrencilik durumu ile ilgili sorular için aşağıdaki formu bugün içinde doldurmanı rica ediyoruz. Kişi bazlı inceleme yapılacak olup, süreci cuma günü gerçekleşecek mentor oturumunda konuşacağız.\n
Form: https://form.jotform.com/232985161869976\n\n
Peki bugünden itibaren bizleri neler bekliyor?\n\n
Asenkron içerikler: Bunlar platform üzerinden istediğin saatte izleyebileceğin videolu eğitimlerdir.\n
Canlı fasilitatör oturumları: 2 Kasım Perşembe, 7 Kasım Salı, 9 Kasım Perşembe, 14 Kasım Salı ve 16 Kasım Perşembe olmak üzere saat 16.00-17.00 arasında gerçekleşecektir. Bunlara size atanan ders içindeki canlı oturum bölümünden katılacaksınız. Bu sayfanın görünümünü sunuma eklenen sayfadan da görebilirsin. Bu oturumlarda sadece eğitim videoları ile ilgili yani eğitim içeriğinde anlamadığınız veya merak ettiğiniz sorular sorulabilmektedir.Bu oturumların yerini sunumdaki sayfalardan da görebilirsin.\n
Mentor ve Q&A oturumları: 3 Kasım Cuma, 10 Kasım Cuma, 15 Kasım Çarşamba ve 22 Kasım Çarşamba olmak üzere saat 14.00-15.00 arasında gerçekleşecektir. Bu oturumlarda projeye dair genel çerçevedeki sorular cevaplanacak olup, süreçte aktif olarak yapacaklarımız konuşulacaktır. Bu uzun proje yolculuğunda birbirimizin motivasyonu yüksek tutacağımız ve çeşitli sohbetleri gerçekleştireceğimiz oturumlar bunlar olacaktır.\n
Kampüs Buluşması: Herkes için Kodlama sürecinde her adayın sadece 1 kez katılması yeterlidir. Eğitiminizi tamamladıktan sonraki ilk buluşmaya katılmanız beklenmektedir. Katılacağınız gün ve saat bilgisi size mail olarak iletilecektir. 25 Kasım’da İstanbul’da seninle yüz yüze tanışmayı heyecanla bekliyoruz. 25 Kasım’a katılamayan adaylar sonraki buluşmaya Ocak ayında katılabilirler sadece burada dikkat edilmesi gereken nokta;kKampüs buluşmasına katılmadan mesleki eğitimlere geçiş yapılamamaktadır. Ocak ayında kampüse katılıyorsanız, şubat ayındaki eğitimlere girebilirsiniz.\n\n
Discorda katılmadan önce mutlaka yapman gerekenler;\n
 Sunucuya özel Ad Soyad – Cfe 3A şeklinde isim düzenlemesi yapmanız gerekmekte. Örneğin; 3A grubuna atandıysanız Ad Soyad- CfE 3A, 3B grubuna atandıysanız Ad Soyad – CfE 3B yazarak aşağıdaki linkten dahil olunuz.
Hem mobil hem web uygulaması kullananlar lütfen sadece 1 kere aynı isimle giriş yapın, 2 ayrı kişi olarak giriş yapmayın!\n
Aşağıdaki link 7 gün süre ile sınırlıdır. Lütfen süresi geçmeden katılın.
Discord: https://discord.gg/MsxaHmdb\n
 Linke girdikten sonra size kullanıcı etiketleri atanacak ve izin verilen sayfaları görebileceksiniz. Lütfen girişte kuralları okuyunuz. Duyuruları discorddan ve platformdan takip edebilirsiniz.\n
 Uzun soluklu bu yolculuğumuzda başarılar dileriz.""",
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

final List<ReviewModel> reviewModelData = [
  ReviewModel(id: "1", title: "Tobeto İşte Başarı Modeli"),
  ReviewModel(id: "2", title: "Front End"),
  ReviewModel(id: "3", title: "Back End"),
  ReviewModel(id: "4", title: "Full Stack"),
  ReviewModel(id: "5", title: "SQL"),
];
