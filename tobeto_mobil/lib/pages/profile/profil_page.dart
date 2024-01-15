import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/core/widgets/background_widget.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            logo,
            height: kToolbarHeight - 10,
          ),
          actions: const [
            Icon(Icons.share),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(Icons.edit),
            ),
          ],
        ),
        body: const BackgroundWidget(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfilePicture(),
                ProfileContainer(child: PersonalInfo()),
                ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Yetkinliklerim",
                    body: Competence(),
                  ),
                ),
                ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Sertifikalarım",
                    body: Certificates(),
                  ),
                ),
                ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Sosyal Medya Hesaplarım",
                    body: SocialMedia(),
                  ),
                ),
                ProfileContainer(
                    child: ProfileBodyContainer(
                  title: "Yetkinlik Rozetlerim",
                  body: Row(
                    children: [],
                  ),
                ))
              ],
            ),
          ),
        ));
  }
}

//container
class ProfileBodyContainer extends StatelessWidget {
  const ProfileBodyContainer({
    super.key,
    required this.title,
    required this.body,
  });
  final String title;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          const Divider(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: body,
          ),
        ],
      ),
    );
  }
}

//sosyal medyalarım içeriği
class SocialMedia extends StatelessWidget {
  const SocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SocialMediaButton(
          logo: github,
          url: "https://github.com/zehraCoskun/tobeto-mobile",
        ),
        SocialMediaButton(
          logo: linkedin,
          url: "https://www.linkedin.com/in/zehracoskun/",
        ),
        SocialMediaButton(
          logo: facebook,
          url: "https://www.facebook.com/",
        ),
        SocialMediaButton(
          logo: twitter,
          url: "https://twitter.com/home",
        ),
        SocialMediaButton(
          logo: instagram,
          url: "https://www.instagram.com",
        ),
      ],
    );
  }
}

//sosyal medya icon button
class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    super.key,
    required this.logo,
    required this.url,
  });
  final String logo;
  final String url;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _launchUrl(Uri.parse(url));
      },
      icon: Image.asset(
        logo,
        height: 32,
        color: TobetoDarkColors.mor,
      ),
    );
  }

  Future<void> _launchUrl(Uri _url) async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}

//sertifikalarım içeriği
class Certificates extends StatelessWidget {
  const Certificates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Contents(
          competence: "Tobeto - Flutter ile Mobil Geliştirme",
        ),
      ],
    );
  }
}

//yetkinliklerim içeriği
class Competence extends StatelessWidget {
  const Competence({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Contents(
          competence: "Flutter",
        ),
        Contents(
          competence: "Firebase",
        ),
        Contents(
          competence: "Sqlite",
        ),
        Contents(
          competence: "Mobile Developer",
        ),
        Contents(
          competence: "Dart",
        ),
      ],
    );
  }
}

//container içeriklerindeki küçük containerlar
class Contents extends StatelessWidget {
  const Contents({
    super.key,
    required this.competence,
  });
  final String competence;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
            ),
          ],
        ),
        child: Text(
          competence,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20),
        ));
  }
}

//kişşisel bilgiler içerik
class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      PersonalInfoRow(
        title: "Ad Soyad",
        content: "Ecmel Aydın",
        contentIcon: Icons.person_2_outlined,
      ),
      PersonalInfoRow(
        title: "Doğum Tarihi",
        content: "05/09/1970",
        contentIcon: Icons.calendar_month_outlined,
      ),
      PersonalInfoRow(
        title: "E-Posta adresi",
        content: "ecmelaydin@mail.com",
        contentIcon: Icons.mail_outline_rounded,
      ),
      PersonalInfoRow(
        title: "Telefon Numarası",
        content: "+905055050000",
        contentIcon: Icons.phone_iphone_outlined,
      ),
    ]);
  }
}

//kişisel bilgiler satırı
class PersonalInfoRow extends StatelessWidget {
  const PersonalInfoRow({
    super.key,
    required this.title,
    required this.content,
    required this.contentIcon,
  });
  final String title;
  final String content;
  final IconData contentIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              contentIcon,
              size: 26,
              color: TobetoDarkColors.lacivert,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: TobetoLightColors.acikSiyah, fontSize: 10),
              ),
              Text(
                content,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}

//profil resmi
class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: Image.asset(
          ders1,
          height: 120,
          width: 120,
        ),
      ),
    );
  }
}

//temel container
class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(16), boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3),
        )
      ]),
      child: child,
    );
  }
}
