import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/exam_model.dart';
import 'package:tobeto_mobil/pages/home/exam_view.dart/exam_card.dart';

class ExamList extends StatelessWidget {
  const ExamList({
    Key? key,
    required this.examList,
  }) : super(key: key);

  final List<ExamModel> examList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: examList.length,
      itemBuilder: (context, index) {
        return ExamCard(exam: examList[index]);
      },
    );
  }
}
