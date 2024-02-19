import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_state.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/pages/home_page.dart';
import 'package:tobeto_mobil/constants/pages/profile_text.dart';
import 'package:tobeto_mobil/core/widgets/background/secondary_background.dart';
import 'package:tobeto_mobil/pages/home/main_view/announcement/main_annoucement_list.dart';
import 'package:tobeto_mobil/pages/home/main_view/header/main_header_container.dart';
import 'package:tobeto_mobil/pages/home/main_view/teams/main_team_list.dart';
import 'package:tobeto_mobil/pages/home/main_view/tobeto%20news/main_tobeto_list.dart';
import 'package:tobeto_mobil/pages/home/main_view/tobeto_social_media/tobeto_socail_media_button.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/social_media/social_media_item.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<UserBloc>().state as UserStateFetched;
    String fullName = state.userModel.fullName!;
    String firstName = fullName.split(' ')[0];

    return SecondaryBackgroundWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildHeader(firstName),
          buildBody(),
          buildFooter(context),
        ],
      ),
    );
  }

  Widget buildHeader(String firstName) {
    return SizedBox(
      height: 120,
      child: MainHeaderContainer(
        title: "$mainHeaderTitle $firstName !",
      ),
    );
  }

  Flexible buildBody() {
    return Flexible(
      flex: 6,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              " Tobeto ile Geleceğini Keşfet",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 22),
            ),
            const MainTobetoList(),
            Text(
              " İstanbul Kodluyor Son Duyurular",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 22),
            ),
            const MainAnnouncementList(),
            Text(
              " Biz Kimiz?",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 22),
            ),
            const MainTeamList(),
          ],
        ),
      ),
    );
  }

  Widget buildFooter(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Column(
        children: [
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TobetoSocialMediaButton(logo: logoT, url: tobetoUrl, color: TobetoDarkColors.mor),
                ...SocialMediaItem.values.map((item) {
                  return TobetoSocialMediaButton(
                    logo: item.toIcon(),
                    url: item.toTobetoUrl(),
                    color: item.toColor(),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
