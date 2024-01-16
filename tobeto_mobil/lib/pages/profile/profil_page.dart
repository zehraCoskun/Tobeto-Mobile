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
    int count = 1;
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
                Share.share("https://tobeto.com");
              },
              icon: Icon(Icons.share),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/profileEdit");
              },
              icon: Icon(Icons.edit_outlined),
            )
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
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Aktivite Haritam",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Divider(),
                      AspectRatio(
                        aspectRatio: 3 / 1,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 12,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                if (index == 0)
                                  const Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text(
                                          "Mon",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          "Wed",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          "Fri",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      months[index].keys.first,
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                    Row(
                                      children: [
                                        for (int i = 0; i < 4; i++)
                                          Column(
                                            children: <Widget>[
                                              for (int j = count + 7; count < j; count++)
                                                Container(
                                                  margin: const EdgeInsets.all(1),
                                                  height: 11,
                                                  width: 11,
                                                  color: Colors.red,
                                                  child: Center(
                                                    child: Text(
                                                      count.toString(),
                                                      style: const TextStyle(
                                                        fontSize: 5,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
