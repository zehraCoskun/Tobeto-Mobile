import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/enums/drawer_item.dart';
import 'package:tobeto_mobil/models/user_model.dart';
import 'package:tobeto_mobil/pages/drawer/drawer_body.dart';
import 'package:tobeto_mobil/pages/drawer/drawer_footer.dart';
import 'package:tobeto_mobil/pages/drawer/drawer_head.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({
    super.key,
    required this.items,
    required this.userModel,
  });

  final List<DrawerItem> items;
  final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHead(user: userModel),
          DrawerBody(drawerItems: items),
          const DrawerFooter(),
          const Text("© 2022 Tobeto"),
        ],
      ),
    );
  }
}
