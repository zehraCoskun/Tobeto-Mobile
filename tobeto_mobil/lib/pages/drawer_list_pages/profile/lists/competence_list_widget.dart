//yetkinliklerim içeriği
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/demo_user_model.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/lists/contents_widget.dart';

class CompetenceListWidget extends StatelessWidget {
  const CompetenceListWidget({
    super.key, required this.user,
  });
  final DemoUserModel user;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 7 / 1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: user.compteneces != null ? user.compteneces!.length : 0,
        itemBuilder: (context, index) {
          return ContentsWidget(
            competence: user.compteneces != null ? user.compteneces![index] : "",
          );
        },
      ),
    );
  }
}
