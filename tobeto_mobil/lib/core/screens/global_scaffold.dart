import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/background_widget.dart';
import 'package:tobeto_mobil/models/enums/drawer_item.dart';
import 'package:tobeto_mobil/core/widgets/drawer_widget.dart';

//login screen disinda suan icin Scaffold yerine her sayfada kullanilacak
//persistent drawer icin appbar suan icin optional ancak bize appbar verilmesse
//drawer icin herturlu appbar ihtiyacimiz oldugundan defaultda appbar olmak zorunda
class GlobalScaffold extends StatelessWidget {
  const GlobalScaffold({
    Key? key,
    this.appBar,
    this.child,
  }) : super(key: key);

  final PreferredSizeWidget? appBar;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(
        items: DrawerItem.values,
      ),
      appBar: appBar ?? AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: BackgroundWidget(
        child: child,
      ),
    );
  }
}
