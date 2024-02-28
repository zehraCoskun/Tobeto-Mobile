import 'package:flutter/material.dart';

//login screen disinda suan icin Scaffold yerine her sayfada kullanilacak
//persistent drawer icin appbar suan icin optional ancak bize appbar verilmesse
//drawer icin herturlu appbar ihtiyacimiz oldugundan defaultda appbar olmak zorunda
class GlobalScaffold extends StatelessWidget {
  const GlobalScaffold({
    Key? key,
    this.appBar,
    this.body,
    this.drawer,
  }) : super(key: key);

  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer,
      appBar: appBar ??
          AppBar(
            //automaticallyImplyLeading: false,
            actionsIconTheme: Theme.of(context).iconTheme,
            iconTheme: Theme.of(context).iconTheme,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          ),
      body: body,
    );
  }
}
