import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/application_model.dart';
import 'package:tobeto_mobil/pages/home/application_view.dart/application_card.dart';

class ApplicationList extends StatelessWidget {
  const ApplicationList({
    Key? key,
    required this.applicationList,
  }) : super(key: key);

  final List<ApplicationModel> applicationList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: applicationList.length,
      itemBuilder: (context, index) {
        return ApplicationCard(application: applicationList[index]);
      },
    );
  }
}
