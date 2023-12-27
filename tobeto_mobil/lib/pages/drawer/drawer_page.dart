import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/enums/drawer_item.dart';
import 'package:tobeto_mobil/pages/drawer/drawer_body.dart';
import 'package:tobeto_mobil/pages/drawer/drawer_footer.dart';
import 'package:tobeto_mobil/pages/drawer/drawer_head.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({
    super.key,
    required this.items,
  });

  final List<DrawerItem> items;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHead(),
          DrawerBody(drawerItems: items),
          const DrawerFooter(),
          const Text("© 2022 Tobeto"),
        ],
      ),
    );
  }
}
