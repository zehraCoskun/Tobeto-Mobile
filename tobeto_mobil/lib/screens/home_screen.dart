import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tobeto_mobil/consts/constants.dart';
import 'package:tobeto_mobil/widgets/home_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: AppBar(),
      body: Text("gfjhgkl"),
    );
  }
}
