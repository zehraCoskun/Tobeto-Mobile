import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/core/widgets/secondary_background.dart';
import 'package:tobeto_mobil/models/user_model.dart';
import 'package:tobeto_mobil/pages/profile/activity_map/activity_map_widget.dart';
import 'package:tobeto_mobil/pages/profile/lists/badges_list_widget.dart';
import 'package:tobeto_mobil/pages/profile/lists/certificates_list_widget.dart';
import 'package:tobeto_mobil/pages/profile/lists/competence_list_widget.dart';
import 'package:tobeto_mobil/pages/profile/personal_info/personal_info_column_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_content_container.dart';
import 'package:tobeto_mobil/pages/profile/profile_main_container.dart';
import 'package:tobeto_mobil/pages/profile/profile_picture/profile_picture.dart';
import 'package:tobeto_mobil/pages/profile/social_media/social_media_widget.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key, required this.userModel});
  final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
        userModel: userModel,
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
                ProfileMainContainer(
                  child: PersonalInfoColumnWidget(user: userModel),
                ),
                ProfileMainContainer(
                  child: ProfileContentContainer(
                    title: "Yetkinliklerim",
                    body: CompetenceListWidget(user: userModel),
                  ),
                ),
                ProfileMainContainer(
                  child: ProfileContentContainer(
                    title: "Sertifikalarım",
                    body: CertificatesListWidget(user: userModel),
                  ),
                ),
                ProfileMainContainer(
                  child: ProfileContentContainer(
                    title: "Sosyal Medya Hesaplarım",
                    body: SocialMediaWidget(
                      user: userModel,
                    ),
                  ),
                ),
                ProfileMainContainer(
                  child: ProfileContentContainer(
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
