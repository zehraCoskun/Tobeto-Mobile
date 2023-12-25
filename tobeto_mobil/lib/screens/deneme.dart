import 'package:flutter/material.dart';

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabs Example'),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'Başvurularım'),
              Tab(text: 'Eğitimlerim'),
              Tab(text: 'Duyuru ve Haberlerim'),
              Tab(text: 'Anketlerim'),
            ],
          ),
          Expanded(
            child: GridView.extent(
              maxCrossAxisExtent: 100,
              children: [
                Text("asda"),
                Text("asda"),
                Text("asda"),
                Text("asda"),
                Text("asda"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
