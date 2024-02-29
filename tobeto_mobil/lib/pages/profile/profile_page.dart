import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_state.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_event.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_state.dart';
import 'package:tobeto_mobil/api/business/requests/user_requests/user_update_request.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/route_names.dart';
import 'package:tobeto_mobil/core/widgets/background/secondary_background.dart';
import 'package:tobeto_mobil/models/user/certificate_model.dart';
import 'package:tobeto_mobil/models/user/talent_model.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/badge/badges_list_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/certificate/certificates_list_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/personal_info/personal_info_column_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/profile_container.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/social_media/social_media_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/talents/talent_list_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_header.dart';
import 'package:tobeto_mobil/core/widgets/drawer/drawer_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        centerTitle: true,
        title: Image.asset(
          logo,
          height: kToolbarHeight - 20,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.PROFILEEDIT);
            },
            icon: const Icon(Icons.edit_outlined),
          )
        ],
      ),
      drawer: const DrawerWidget(),
      body: SecondaryBackgroundWidget(
        child: SingleChildScrollView(
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state is UserStateFetched) {
                return Column(
                  children: <Widget>[
                    ProfileHeader(
                      userImage: state.userModel.imageUrl,
                    ),
                    ProfileContainer(
                      title: "Kişisel Bilgilerim",
                      child: PersonalInfoColumnWidget(
                        user: state.userModel,
                      ),
                    ),
                    buildTalentField(
                      context,
                      state.userModel.talents,
                    ),
                    buildCertificateField(
                      context,
                      state.userModel.certificates,
                    ),
                    const ProfileContainer(
                      title: "Sosyal Medya Hesaplarım",
                      child: SocialMediaWidget(),
                    ),
                    if (state.userModel.badges != null)
                      ProfileContainer(
                        title: "Yetkinlik Rozetlerim",
                        child: BadgesListWidget(
                          badges: state.userModel.badges,
                        ),
                      ),
                  ],
                );
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }

  Widget buildCertificateField(
    BuildContext context,
    List<CertificateModel>? certificates,
  ) {
    return ProfileContainer(
      title: "Sertifikalarım",
      trailing: GestureDetector(
        onTap: () {
          final auth = context.read<AuthBloc>().state as AuthStateLoggedIn;
          final userBloc = context.read<UserBloc>();
          pickFile(auth.user.uid, userBloc);
        },
        child: Icon(
          Icons.add,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      child: CertificatesListWidget(
        certificates: certificates,
      ),
    );
  }

  Widget buildTalentField(
    BuildContext context,
    List<TalentModel>? talents,
  ) {
    return ProfileContainer(
      title: "Yetkinliklerim",
      trailing: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.add,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      child: TalentListWidget(
        talents: talents,
      ),
    );
  }

  void pickFile(String id, UserBloc bloc) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      final files = result.paths.map((path) => File(path!)).toList().first;

      bloc.add(
        UserEventUpdate(
          request: UserUpdateRequest(
            id: id,
            certificateFile: files,
          ),
        ),
      );
    }
  }
}
