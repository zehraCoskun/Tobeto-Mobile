import 'package:flutter/material.dart';
import 'package:tobeto_mobil/dummy_data.dart';
import 'package:tobeto_mobil/pages/home_tabbar_pages/application_view.dart/application_card.dart';

class ApplicationList extends StatelessWidget {
  const ApplicationList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: applicationModelData.length,
      itemBuilder: (context, index) {
        return ApplicationCard(application: applicationModelData[index]);
      },
    );
  }
}
