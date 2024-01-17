import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/widgets/secondary_background.dart';
import 'package:tobeto_mobil/pages/profile/activity_map_widget.dart';
import 'package:tobeto_mobil/pages/profile/badges_row_widget.dart';
import 'package:tobeto_mobil/pages/profile/certificates_row_widget.dart';
import 'package:tobeto_mobil/pages/profile/competence_row_widget.dart';
import 'package:tobeto_mobil/pages/profile/personal_info_column_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_body_container.dart';
import 'package:tobeto_mobil/pages/profile/profile_container.dart';
import 'package:tobeto_mobil/pages/profile/profile_picture.dart';
import 'package:tobeto_mobil/pages/profile/social_media_widget.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            logo,
            height: kToolbarHeight - 10,
          ),
          actions: [
            IconButton(
              onPressed: () {
                Share.share("https://tobeto.com");
              },
              icon: const Icon(Icons.share),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/profileEdit");
              },
              icon: const Icon(Icons.edit_outlined),
            )
          ],
        ),
        body: const SecondaryBackgroundWidget(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfilePicture(),
                ProfileContainer(child: PersonalInfoColumnWidget()),
                ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Yetkinliklerim",
                    body: CompetenceRowWidget(),
                  ),
                ),
                ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Sertifikalarım",
                    body: CertificatesRowWidget(),
                  ),
                ),
                ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Sosyal Medya Hesaplarım",
                    body: SocialMediaWidget(),
                  ),
                ),
                ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Yetkinlik Rozetlerim",
                    body: BadgesRowWidget(),
                  ),
                ),
                ActivityMapWidget(),
              ],
            ),
          ),
        ));
  }
}
