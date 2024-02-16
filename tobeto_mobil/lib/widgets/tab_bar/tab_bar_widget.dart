import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const TabBarWidget({
    Key? key,
    this.isScrollable = false,
    required this.controller,
    required this.tabs,
    this.height = kToolbarHeight,
  }) : super(key: key);

  final bool isScrollable;
  final TabController controller;
  final List<Tab> tabs;
  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: Theme.of(context).tabBarTheme.indicatorColor,
      dividerColor: Theme.of(context).tabBarTheme.dividerColor,
      unselectedLabelColor: Theme.of(context).tabBarTheme.unselectedLabelColor,
      labelColor: Theme.of(context).tabBarTheme.labelColor,
      isScrollable: isScrollable,
      controller: controller,
      tabs: tabs
    );
  }
}