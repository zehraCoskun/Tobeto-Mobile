//yetkinliklerim içeriği
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/user_model.dart';
import 'package:tobeto_mobil/pages/profile/contents_widget.dart';

class CompetenceListWidget extends StatelessWidget {
  const CompetenceListWidget({
    super.key, required this.user,
  });
  final UserModel user;
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
