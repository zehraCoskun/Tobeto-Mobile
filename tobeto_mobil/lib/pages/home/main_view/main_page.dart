import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_state.dart';
import 'package:tobeto_mobil/constants/pages/home_page.dart';
import 'package:tobeto_mobil/core/widgets/background/secondary_background.dart';
import 'package:tobeto_mobil/pages/home/main_view/announcement/main_annoucement_list.dart';
import 'package:tobeto_mobil/pages/home/main_view/header/main_header_container.dart';
import 'package:tobeto_mobil/pages/home/main_view/tobeto/main_tobeto_list.dart';

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
    return const Flexible(
      flex: 6,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(child: MainTobetoList()),
            SizedBox(child: MainAnnouncementList()),
            SizedBox(child: MainAnnouncementList()),
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
