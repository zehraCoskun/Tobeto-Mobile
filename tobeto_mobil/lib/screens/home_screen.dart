import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/widgets/announcement_item_widget.dart';
import 'package:tobeto_mobil/widgets/education_item_widget.dart';

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
    _tabController = TabController(length: 4, vsync: this);
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
      children: [
        Center(
          child: ElevatedButton(
              onPressed: () {
                //başvurularım sayfası
              },
              child: Text("başvurular")),
        ),
        Center(
          child: ElevatedButton(
              onPressed: () {
                //Eğitimlerim sayfası
              },
              child: EducationItemWidget(title: "Mobil 1B", time: "21 Eylül 2023 15:20")),
        ),
        Center(
          child: ElevatedButton(
              onPressed: () {
                // Duyuru ve Haberlerim sayfası
              },
              child: ListView(
                children: const [
                  AnnouncementItemWidget(
                      type: "Duyuru", organisation: "İstanbul Kodluyor", title: "Yeni Grupların Discord'a Katılımı", publicationDate: "2023-12-26"),
                  AnnouncementItemWidget(
                      type: "Duyuru", organisation: "İstanbul Kodluyor", title: "Yeni Grupların Discord'a Katılımı", publicationDate: "2023-12-26"),
                  AnnouncementItemWidget(
                      type: "Duyuru", organisation: "İstanbul Kodluyor", title: "Yeni Grupların Discord'a Katılımı", publicationDate: "2023-12-26"),
                  AnnouncementItemWidget(
                      type: "Duyuru", organisation: "İstanbul Kodluyor", title: "Yeni Grupların Discord'a Katılımı", publicationDate: "2023-12-26"),
                ],
              )),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              //Anketlerim sayfası
            },
            child: Text('Buton 4'),
          ),
        ),
      ],
    );
  }
}
