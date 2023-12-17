import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/background_widget.dart';
import 'package:tobeto_mobil/widgets/drawer_widget.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(),
      body: BackgroundWidget(),
    );
  }
}
