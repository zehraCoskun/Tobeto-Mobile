import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/drawer_text.dart';
import 'package:tobeto_mobil/core/widgets/drawer/drawer_body.dart';
import 'package:tobeto_mobil/core/widgets/drawer/drawer_footer.dart';
import 'package:tobeto_mobil/core/widgets/drawer/drawer_head.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          DrawerHead(),
          DrawerBody(),
          DrawerFooter(),
          Text(drawerCopyrightText),
        ],
      ),
    );
  }
}
