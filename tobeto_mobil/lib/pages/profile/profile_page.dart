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
import 'package:tobeto_mobil/pages/profile/profile_container/profile_container.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/profile_container_item.dart';
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
                    ...ProfileContainerItem.values.map((item) {
                      return ProfileContainer(
                        title: item.toString(),
                        trailing: item == ProfileContainerItem.certificates
                            ? GestureDetector(
                                onTap: () {
                                  final auth = context.read<AuthBloc>().state
                                      as AuthStateLoggedIn;
                                  final userBloc = context.read<UserBloc>();
                                  pickFile(auth.user.uid, userBloc);
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              )
                            : null,
                        child: item.toChild(state.userModel),
                      );
                    }),
                  ],
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
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
