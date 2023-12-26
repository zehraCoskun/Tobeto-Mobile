import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/screens/home_screen/screens/announcement_screen_widget.dart';
import 'package:tobeto_mobil/screens/home_screen/screens/application_screen_widget.dart';
import 'package:tobeto_mobil/screens/home_screen/screens/education_screen_widget.dart';
import 'package:tobeto_mobil/screens/home_screen/screens/exams_screen_widget.dart';
import 'package:tobeto_mobil/screens/home_screen/screens/survey_screen_widget.dart';
import 'package:tobeto_mobil/screens/profile_screen/screens/certificates_screen_widget.dart';
import 'package:tobeto_mobil/screens/profile_screen/screens/competences_screen_widget.dart';
import 'package:tobeto_mobil/screens/profile_screen/screens/educations_screen_widget.dart';
import 'package:tobeto_mobil/screens/profile_screen/screens/experiences_screen_widget.dart';
import 'package:tobeto_mobil/screens/profile_screen/screens/languages_screen_widget.dart';
import 'package:tobeto_mobil/screens/profile_screen/screens/personal_screen_widget.dart';
import 'package:tobeto_mobil/screens/profile_screen/screens/settings_screen_widget.dart';
import 'package:tobeto_mobil/screens/profile_screen/screens/social_media__screen_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _DenemeSayfasiState();
}

class _DenemeSayfasiState extends State<ProfileScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
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
            Tab(text: 'Kişisel Bilgilerim'),
            Tab(text: 'Deneyimlerim'),
            Tab(text: 'Eğitim Hayatım'),
            Tab(text: 'Yetkinliklerim'),
            Tab(text: 'Sertifikalarım'),
            Tab(text: 'Medya Hesaplarım'),
            Tab(text: 'Yabancı Dillerim'),
            Tab(text: 'Ayarlar')
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
      children: const [
        PersonalWidget(),
        ExperiencesWidget(),
        EducationsWidget(),
        CompetencesWidget(),
        CertificatesWidget(),
        SocialMediaWidget(),
        LanguagesWidget(),
        SettingWidget(),
      ],
    );
  }
}
