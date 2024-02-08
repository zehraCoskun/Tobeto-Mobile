import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/enums/drawer_item.dart';
import 'package:tobeto_mobil/models/firebase_models/user_model.dart';
import 'package:tobeto_mobil/pages/drawer/drawer_body.dart';
import 'package:tobeto_mobil/pages/drawer/drawer_footer.dart';
import 'package:tobeto_mobil/pages/drawer/drawer_head.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({
    super.key,
    required this.items,
    this.userModel,
    this.userId,
  });

  final List<DrawerItem> items;
  final UserModel? userModel;
  final String? userId;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHead(
            //user: userModel,
            userId: userId,
          ),
          DrawerBody(drawerItems: items),
          const DrawerFooter(),
          const Text("© 2022 Tobeto"),
        ],
      ),
    );
  }
}
