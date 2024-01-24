import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/core/widgets/secondary_background.dart';
import 'package:tobeto_mobil/dummy_user_data.dart';
import 'package:tobeto_mobil/models/user_model.dart';
import 'package:tobeto_mobil/pages/home/home_body.dart';
import 'package:tobeto_mobil/pages/home/home_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState(userModel: user1);
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  _HomePageState({required this.userModel});

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      userModel: userModel,
      appBar: HomeHeader(
        tabController: _tabController,
      ),
      body: SecondaryBackgroundWidget(
        child: HomeBody(
          controller: _tabController,
        ),
      ),
    );
  }
}
