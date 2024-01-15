//yetkinliklerim içeriği
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/profile/contents_widget.dart';

class CompetenceRowWidget extends StatelessWidget {
  const CompetenceRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ContentsWidget(
          competence: "Flutter",
        ),
        ContentsWidget(
          competence: "Firebase",
        ),
        ContentsWidget(
          competence: "Sqlite",
        ),
        ContentsWidget(
          competence: "Mobile Developer",
        ),
        ContentsWidget(
          competence: "Dart",
        ),
      ],
    );
  }
}

