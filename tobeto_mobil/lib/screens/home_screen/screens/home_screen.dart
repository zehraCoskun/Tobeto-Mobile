import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/screens/home_screen/screens/announcement_screen_widget.dart';
import 'package:tobeto_mobil/screens/home_screen/screens/application_screen_widget.dart';
import 'package:tobeto_mobil/screens/home_screen/screens/education_screen_widget.dart';
import 'package:tobeto_mobil/screens/home_screen/screens/exams_screen_widget.dart';
import 'package:tobeto_mobil/screens/home_screen/screens/survey_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _DenemeSayfasiState();
}

class _DenemeSayfasiState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: AppBar(
        title: SizedBox(
          height: AppBar().preferredSize.height, // Appbar yüksekliği kadar yükseklik belirleme
          child: Image.asset(
            Theme.of(context).brightness == Brightness.dark ? "assets/images/ik-logo-light.png" : "assets/images/ik-logo-dark.png",
          ),
        ),
        bottom: TabBar(
          indicatorColor: Theme.of(context).tabBarTheme.indicatorColor,
          dividerColor: Theme.of(context).tabBarTheme.dividerColor,
          unselectedLabelColor: Theme.of(context).tabBarTheme.unselectedLabelColor,
          labelColor: Theme.of(context).tabBarTheme.labelColor,
          controller: _tabController,
          isScrollable: true,
          tabs: const [
            Tab(text: 'Başvurularım'),
            Tab(text: 'Eğitimlerim'),
            Tab(text: 'Duyuru ve Haberlerim'),
            Tab(text: 'Anketlerim'),
            Tab(
              text: 'Sınavlarım',
            )
          ],
        ),
      ),
      body: HomeTabbarView(tabController: _tabController),
    );
  }
}

class HomeTabbarView extends StatelessWidget {
  const HomeTabbarView({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: const [ApplicationWidget(), EducationWidget(), AnnouncementWidget(), SurveyWidget(), ExamsWidget()],
    );
  }
}
