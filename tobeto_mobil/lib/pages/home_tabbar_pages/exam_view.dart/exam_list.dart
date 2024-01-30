import 'package:flutter/material.dart';
import 'package:tobeto_mobil/dummy_data.dart';
import 'package:tobeto_mobil/pages/home_tabbar_pages/exam_view.dart/exam_card.dart';

class ExamList extends StatelessWidget {
  const ExamList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: examModelData.length,
      itemBuilder: (context, index) {
        return ExamCard(exam: examModelData[index]);
      },
    );
  }
}
