import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/widgets/secondary_background.dart';
import 'package:tobeto_mobil/models/user_model.dart';
import 'package:tobeto_mobil/pages/profile/activity_map_widget.dart';
import 'package:tobeto_mobil/pages/profile/badges_list_widget.dart';
import 'package:tobeto_mobil/pages/profile/certificates_list_widget.dart';
import 'package:tobeto_mobil/pages/profile/competence_list_widget.dart';
import 'package:tobeto_mobil/pages/profile/personal_info_column_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_body_container.dart';
import 'package:tobeto_mobil/pages/profile/profile_container.dart';
import 'package:tobeto_mobil/pages/profile/profile_picture.dart';
import 'package:tobeto_mobil/pages/profile/social_media_widget.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key, required this.userModel});
  final UserModel userModel;
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
        body: SecondaryBackgroundWidget(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfilePicture(user: userModel),
                ProfileContainer(child: PersonalInfoColumnWidget(user: userModel)),
                ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Yetkinliklerim",
                    body: CompetenceListWidget(user: userModel),
                  ),
                ),
                ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Sertifikalarım",
                    body: CertificatesListWidget(user: userModel),
                  ),
                ),
                ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Sosyal Medya Hesaplarım",
                    body: SocialMediaWidget(
                      user: userModel,
                    ),
                  ),
                ),
                ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Yetkinlik Rozetlerim",
                    body: BadgesListWidget(
                      user: userModel,
                    ),
                  ),
                ),
                const ActivityMapWidget(),
              ],
            ),
          ),
        ));
  }
}
