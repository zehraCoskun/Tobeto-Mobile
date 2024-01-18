//yetkinliklerim içeriği
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/profile/contents_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_edit_page/competence_widget.dart';

class CompetenceListWidget extends StatelessWidget {
  const CompetenceListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 7 / 1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: MyItems.length,
        itemBuilder: (context, index) {
          return ContentsWidget(
            competence: MyItems[index],
          );
        },
      ),
    );
  }
}
