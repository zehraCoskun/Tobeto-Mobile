import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_state.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_event.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_state.dart';
import 'package:tobeto_mobil/api/business/requests/user_requests/user_update_request.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/pages/profile_text.dart';
import 'package:tobeto_mobil/core/widgets/background/secondary_background.dart';
import 'package:tobeto_mobil/models/user/talent_model.dart';
import 'package:tobeto_mobil/models/user/user_model.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/social_media/social_media_item.dart';
import 'package:tobeto_mobil/pages/profile_edit/profile_edit_bottom_sheet.dart';
import 'package:tobeto_mobil/pages/profile_edit/profile_edit_form_date_field.dart';
import 'package:tobeto_mobil/pages/profile_edit/profile_edit_form_field.dart';
import 'package:tobeto_mobil/pages/profile_edit/profile_edit_header.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  late UserUpdateRequest request;
  late UserModel? user;
  File? _selectedImage;
  final _formKey = GlobalKey<FormState>();

  void save() {
    final auth = context.read<AuthBloc>().state as AuthStateLoggedIn;
    request = UserUpdateRequest(id: auth.user.uid);

    if (_selectedImage != null) {
      request.file = _selectedImage;
    }

    _formKey.currentState!.save();
    context.read<UserBloc>().add(
          UserEventUpdate(request: request),
        );
    Navigator.of(context).pop();
  }

  void _pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _selectedImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = (context.watch<UserBloc>().state);

    if (state is UserStateFetched) {
      user = state.userModel;
    } else {
      user = null;
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          logo,
          height: kToolbarHeight - 20,
        ),
        actions: [
          TextButton(
            onPressed: () => save(),
            child: const Text("Kaydet"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SecondaryBackgroundWidget(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildProfileImage(),
                  const ProfileEditHeader(
                    title: "Profil Bilgilerim",
                  ),
                  ProfileEditFormField(
                    initialValue: user?.fullName,
                    label: const Text(profileFullName),
                    onSaved: (value) => request.fullName = value,
                  ),
                  ProfileEditFormDateField(
                    initialValue: user?.birthDate,
                    onSaved: (value) =>
                        request.birthDate = DateTime.parse(value!),
                  ),
                  ProfileEditFormField(
                    initialValue: user?.email,
                    label: const Text(profileMail),
                    onSaved: (value) => request.email = value,
                  ),
                  ProfileEditFormField(
                    initialValue: user?.phoneNumber,
                    label: const Text(profilePhone),
                    onSaved: (value) {
                      if (value == null || value.isEmpty) {
                        request.phoneNumber = null;
                      } else {
                        request.phoneNumber = value;
                      }
                    },
                  ),
                  ...SocialMediaItem.values.map((item) {
                    return ProfileEditFormField(
                      initialValue: item.toValue(user),
                      label: Text(
                        item.toString(),
                      ),
                      icon: Image.asset(
                        item.toIcon(),
                        height: 32,
                        width: 32,
                      ),
                    );
                  }),
                  // ProfileEditHeader(
                  //   title: "Yetkinliklerim",
                  //   icon: IconButton(
                  //     onPressed: () => profileEditBottomSheet(
                  //       context,
                  //       user?.talents,
                  //     ),
                  //     icon: Icon(
                  //       Icons.add,
                  //       color: TobetoDarkColors.siyah,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProfileImage() {
    late Widget widget;

    if (user?.imageUrl != null) {
      widget = CircleAvatar(
        backgroundImage: NetworkImage(user!.imageUrl!),
        radius: 60,
      );
    } else if (_selectedImage != null) {
      widget = CircleAvatar(
        backgroundImage: FileImage(_selectedImage!),
        radius: 60,
      );
    } else {
      widget = IconButton(
        onPressed: () => _pickImage(),
        icon: Icon(
          Icons.add_a_photo_outlined,
          color: TobetoDarkColors.lacivert,
          size: 30,
        ),
      );
    }

    return Center(
      child: widget,
    );
  }

  Future<dynamic> profileEditBottomSheet(
    BuildContext context,
    List<TalentModel>? talents,
  ) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      enableDrag: false,
      builder: (context) {
        return ProfileEditBottomSheet(
          talents: talents,
        );
      },
    );
  }
}
