import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_state.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/widgets/secondary_background.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/profile_container.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/profile_container_item.dart';
import 'package:tobeto_mobil/pages/profile/profile_header.dart';
import 'package:tobeto_mobil/widgets/drawer/drawer_widget.dart';

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
              Navigator.of(context).pushNamed("/profileEdit");
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
                        child: item.toChild(state.userModel),
                      );
                    }),
                  ],
                );
              }
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
