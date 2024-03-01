import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_state.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/social_media/social_media_button.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/social_media/social_media_item.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<UserBloc>().state as UserStateFetched;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ...SocialMediaItem.values.map((item) {
            return SocialMediaButton(
              logo: item.toIcon(),
              url: item.toUrl(state.userModel),
              color: item.toColor(),
            );
          }),
        ],
      ),
    );
  }
}
