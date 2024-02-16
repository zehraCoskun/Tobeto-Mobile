import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_event.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/widgets/tab_bar_widget.dart';
import 'package:tobeto_mobil/widgets/tab_bar/tab_bar_item.dart';

class HomeHeader extends StatelessWidget implements PreferredSizeWidget {
  const HomeHeader({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        height: kToolbarHeight,
        Theme.of(context).brightness == Brightness.dark
            ? ikLogoLight
            : ikLogoDark,
      ),
      bottom: TabBarWidget(
        isScrollable: true,
        controller: tabController,
        tabs: [
          ...TabBarItem.values.map((tab) {
            return Tab(
              text: tab.toString(),
            );
          }),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            context.read<AuthBloc>().add(const AuthEventLogOut());
          },
          icon: const Icon(Icons.logout_outlined),
        ),
      ],
    );
  }
}
