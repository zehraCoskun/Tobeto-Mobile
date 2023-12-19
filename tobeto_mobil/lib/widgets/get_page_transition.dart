import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:tobeto_mobil/models/enums/drawer_item.dart';

class GetPageTransition {
  const GetPageTransition._();

  static GetPage getPage(String name, Widget Function() page) {
    return GetPage(
      name: name,
      page: page,
      transition: Transition.zoom,
      transitionDuration: const Duration(seconds: 1),
    );
  }

  static List<GetPage> getPages(List<DrawerItem> items) {
    List<GetPage> list = [];

    for (DrawerItem item in items) {
      list.add(
        getPage(
          item.getRouteName(),
          () => item.getRoute(),
        ),
      );
    }
    return list;
  }
}
