import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/enums/drawer_item.dart';
import 'package:tobeto_mobil/models/user_model.dart';
import 'package:tobeto_mobil/pages/drawer/drawer_page.dart';

//login screen disinda suan icin Scaffold yerine her sayfada kullanilacak
//persistent drawer icin appbar suan icin optional ancak bize appbar verilmesse
//drawer icin herturlu appbar ihtiyacimiz oldugundan defaultda appbar olmak zorunda
class GlobalScaffold extends StatelessWidget {
  const GlobalScaffold({
    Key? key,
    this.appBar,
    this.body,
    required this.userModel,
  }) : super(key: key);

  final PreferredSizeWidget? appBar;
  final Widget? body;
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(
        items: DrawerItem.values,
        userModel: userModel,
      ),
      appBar: appBar ??
          AppBar(
            //automaticallyImplyLeading: false,
            actionsIconTheme: Theme.of(context).iconTheme,
            iconTheme: Theme.of(context).iconTheme,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            // actions: [
            //   Builder(builder: (context) {
            //     return IconButton(
            //       onPressed: () => Scaffold.of(context).openDrawer(),
            //       icon: const Icon(Icons.menu),
            //     );
            //   }),
            // ],
          ),
      body: body,
    );
  }
}
