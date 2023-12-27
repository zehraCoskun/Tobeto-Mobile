import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/tab_bar_widget.dart';
import 'package:tobeto_mobil/models/enums/tab_bar_item.dart';

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
            ? "assets/images/ik-logo-light.png"
            : "assets/images/ik-logo-dark.png",
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
    );
  }
}
