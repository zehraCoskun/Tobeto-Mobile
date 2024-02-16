import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_state.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/animation/animated_wave_curves.dart';
import 'package:tobeto_mobil/core/widgets/container_widget.dart';
import 'package:tobeto_mobil/core/widgets/secondary_background.dart';
import 'package:tobeto_mobil/pages/home/main_view/bookmark_education_list.dart';
import 'package:tobeto_mobil/pages/home/main_view/widgets/main_header_container.dart';
import 'package:tobeto_mobil/pages/home/main_view/widgets/main_page_content.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SecondaryBackgroundWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [buildHeader(), buildBody(), buildFooter(context)],
      ),
    );
  }

  Widget buildHeader() {
    return SizedBox(
      height: 150,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const AnimatedWaveCurves(),
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              String greeting = "";
              if (state is UserStateFetched) {
                greeting = "İstanbul Kodluyor'a Hoşgeldin ${state.userModel.fullName} !";
              } else {
                greeting = "İstanbul Kodluyor'a Hoşgeldin !";
              }
              return Flexible(
                flex: 2,
                child: MainHeaderContainer(
                  title: greeting,
                  imageUrl: mainEmptyHeaderDataImage,
                  icon: Icons.push_pin_outlined,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Flexible buildBody() {
    return const Flexible(
      flex: 6,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: BookmarkEducationList(
                    icon: Icons.heart_broken,
                  ),
                ),
                ContainerWidget(
                  margin: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                  child: Text(
                    "Yarım kalanlar",
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: BookmarkEducationList(
                    icon: Icons.heart_broken,
                  ),
                ),
                ContainerWidget(
                  margin: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                  child: Text(
                    "Yarım kalanlar",
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: BookmarkEducationList(
                    icon: Icons.heart_broken,
                  ),
                ),
                ContainerWidget(
                  margin: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                  child: Text(
                    "Yarım kalanlar",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFooter(BuildContext context) {
    return Flexible(
      flex: 1,
      child: SizedBox(
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_rounded,
                  size: 48,
                )),
            Row(children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.local_fire_department_outlined,
                  size: 48,
                ),
              ),
              Text(
                "12",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 28, fontWeight: FontWeight.w700),
              )
            ])
          ],
        ),
      ),
    );
  }
}
