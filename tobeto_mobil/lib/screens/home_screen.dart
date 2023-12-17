import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/background_widget.dart';
import 'package:tobeto_mobil/widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const DrawerWidget(),
      appBar: AppBar(),
      body: const BackgroundWidget(),
    );
  }
}