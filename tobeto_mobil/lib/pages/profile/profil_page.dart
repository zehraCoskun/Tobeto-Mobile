import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/core/widgets/background_widget.dart';
import 'package:tobeto_mobil/pages/profile/badges_row_widget.dart';
import 'package:tobeto_mobil/pages/profile/certificates_row_widget.dart';
import 'package:tobeto_mobil/pages/profile/competence_row_widget.dart';
import 'package:tobeto_mobil/pages/profile/contributions_grid_widget.dart';
import 'package:tobeto_mobil/pages/profile/personal_info_column_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_body_container.dart';
import 'package:tobeto_mobil/pages/profile/profile_container.dart';
import 'package:tobeto_mobil/pages/profile/profile_picture.dart';
import 'package:tobeto_mobil/pages/profile/social_media_widget.dart';

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
          actions: [
            IconButton(
              onPressed: () {
                Share.share("https://tobeto.com/platform");
              },
              icon: const Icon(Icons.share),
              style: Theme.of(context).iconButtonTheme.style,
            ),
          ],
        ),
        body: BackgroundWidget(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ProfilePicture(),
                const ProfileContainer(child: PersonalInfoColumnWidget()),
                const ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Yetkinliklerim",
                    body: CompetenceRowWidget(),
                  ),
                ),
                const ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Sertifikalarım",
                    body: CertificatesRowWidget(),
                  ),
                ),
                const ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Sosyal Medya Hesaplarım",
                    body: SocialMediaWidget(),
                  ),
                ),
                const ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Yetkinlik Rozetlerim",
                    body: BadgesRowWidget(),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Aktivite Takvimim",
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Divider(),
                        const ContributionsGrid(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

