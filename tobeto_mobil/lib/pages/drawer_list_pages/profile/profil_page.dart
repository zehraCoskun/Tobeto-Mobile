import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:tobeto_mobil/api/business/requests/profile_requests/profile_create_request.dart';
import 'package:tobeto_mobil/api/business/requests/profile_requests/profile_update_request.dart';
import 'package:tobeto_mobil/api/business/requests/user_requests/user_create_request.dart';
import 'package:tobeto_mobil/api/business/requests/user_requests/user_update_request.dart';
import 'package:tobeto_mobil/api/business/services/user_service.dart';
import 'package:tobeto_mobil/api/repository/user_repository.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/core/widgets/secondary_background.dart';
import 'package:tobeto_mobil/models/enums/social_media_item.dart';
import 'package:tobeto_mobil/models/demo_user_model.dart';
import 'package:tobeto_mobil/models/firebase_models/badge_model.dart';
import 'package:tobeto_mobil/models/firebase_models/profile_model.dart';
import 'package:tobeto_mobil/models/firebase_models/user_model.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/activity_map/activity_map_widget.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/lists/badges_list_widget.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/lists/certificates_list_widget.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/lists/competence_list_widget.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/personal_info/personal_info_column_widget.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/profile_container.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/profile_picture/profile_picture.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/lists/social_media_list_widget.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key, required this.userModel});
  final DemoUserModel userModel;
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
        userModel: userModel,
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            logo,
            height: kToolbarHeight - 20,
          ),
          actions: [
            IconButton(
              onPressed: () {
                Share.share("https://tobeto.com");
              },
              icon: const Icon(Icons.share),
            ),
            IconButton(
              onPressed: () async {
                final result = await UserService(UserRepository()).get("123456");
                print(result?.profileGetResponse?.fullName);
                print(result?.profileGetResponse?.badges);
                //Navigator.of(context).pushNamed("/profileEdit");

                // final request = UserCreateRequest(
                //   id: "123456",
                //   profileRequest: ProfileCreateRequest(
                //     email: "cembo4141@hotmail.com",
                //     fullName: "cembo4141",
                //   ),
                // );

                // await UserRepository().create(
                //   UserModel(
                //     id: request.id,
                //     profile: ProfileModel(
                //       email: request.profileRequest.email,
                //       fullName: request.profileRequest.fullName,
                //     ),
                //   ).toMap(),
                // );

                // final updateRequest = UserUpdateRequest(
                //   id: "123456",
                //   profileUpdateRequest: ProfileUpdateRequest(
                //     email: "cemguven4108@hotmail.com",
                //     fullName: "cemguven",
                //     birthDate: DateTime.now(),
                //     github: "github.com/cemguven",
                //     badges: [
                //       BadgeModel(name: "java badge", imageUrl: "adadad"),
                //       BadgeModel(name: "c# badge", imageUrl: "cmekm"),
                //     ],
                //     certificates: [
                //       "certificate1",
                //       "certificate2",
                //     ],
                //   ),
                // );

                // final doc = await UserRepository().get(updateRequest.id);

                // await UserRepository().update(
                //   doc.id,
                //   updateRequest.toModel().toMap(),
                // );
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
                //ProfilePicture(user: userModel),
                ProfileContainer(
                  title: "Kişisel Bİlgilerim",
                  child: PersonalInfoColumnWidget(user: userModel),
                ),
                ProfileContainer(
                  title: "Yetkinliklerim",
                  child: CompetenceListWidget(user: userModel),
                ),
                ProfileContainer(
                  title: "Sertifikalarım",
                  child: CertificatesListWidget(user: userModel),
                ),
                ProfileContainer(
                  title: "Sosyal Medya Hesaplarım",
                  child: SocialMediaWidget(
                    user: userModel,
                    socialMediaItems: SocialMediaItem.values,
                  ),
                ),
                ProfileContainer(
                  title: "Yetkinlik Rozetlerim",
                  child: BadgesListWidget(
                    user: userModel,
                  ),
                ),
                const ActivityMapWidget(),
              ],
            ),
          ),
        ));
  }
}
