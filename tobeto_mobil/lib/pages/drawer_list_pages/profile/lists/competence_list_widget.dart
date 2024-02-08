//yetkinliklerim içeriği
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/lists/contents_widget.dart';

class CompetenceListWidget extends StatelessWidget {
  const CompetenceListWidget({
    super.key,
    required this.competences,
  });

  final List<String>? competences;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 7 / 1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: competences != null ? competences!.length : 0,
        itemBuilder: (context, index) {
          return ContentsWidget(
            content: competences != null ? competences![index] : "",
          );
        },
      ),
    );
  }
}
