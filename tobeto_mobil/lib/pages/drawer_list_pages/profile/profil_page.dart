import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share/share.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_event.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_state.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/core/widgets/secondary_background.dart';
import 'package:tobeto_mobil/models/enums/social_media_item.dart';
import 'package:tobeto_mobil/models/firebase_models/user_model.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/activity_map/activity_map_widget.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/lists/certificates_list_widget.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/lists/competence_list_widget.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/personal_info/personal_info_column_widget.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/profile_container.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/lists/social_media_list_widget.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/profile_picture/profile_picture.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key, this.user});
  final UserModel? user;
  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  late final String userId;
  @override
  void initState() {
    super.initState();
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      userId = user.uid;
      context.read<UserBloc>().add(UserEventFetch(docId: userId));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
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
              onPressed: () {},
              icon: const Icon(Icons.edit_outlined),
            )
          ],
        ),
        body: SecondaryBackgroundWidget(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlocBuilder<UserBloc, UserState>(
                  builder: (context, state) {
                    if (state is UserStateFetching) {
                      if (state.user != null) {
                        return Column(
                          children: [
                            ProfilePicture(
                              userImage: state.user!.profileImage,
                            ),
                            ProfileContainer(
                              title: "Kişisel Bİlgilerim",
                              child: PersonalInfoColumnWidget(user: state.user!),
                            ),
                            ProfileContainer(
                              title: "Yetkinliklerim",
                              child: CompetenceListWidget(competences: state.user!.competences),
                            ),
                            ProfileContainer(
                              title: "Sertifikalarım",
                              child: CertificatesListWidget(certificates: state.user!.certificates),
                            ),
                            ProfileContainer(
                              title: "Sosyal Medya Hesaplarım",
                              child: SocialMediaWidget(
                                user: state.user!,
                                socialMediaItems: SocialMediaItem.values,
                              ),
                            ),
                            const ActivityMapWidget(),
                          ],
                        );
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    } else if (state is UserStateError) {
                      return Text(
                        'Hata: ${state.errorMessage}',
                        style: const TextStyle(fontSize: 16, color: Colors.red),
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
                // ProfileContainer(
                //   title: "Yetkinlik Rozetlerim",
                //   child: BadgesListWidget(
                //     user: widget.userModel,
                //   ),
                // ),
              ],
            ),
          ),
        ));
  }
}
