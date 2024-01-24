import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/exam/exams_bloc/exams_bloc.dart';
import 'package:tobeto_mobil/api/bloc/exam/exams_bloc/exams_event.dart';
import 'package:tobeto_mobil/api/bloc/exam/exams_bloc/exams_state.dart';
import 'package:tobeto_mobil/pages/home_tabbar_pages/exam_view.dart/exam_card.dart';

class ExamList extends StatelessWidget {
  const ExamList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExamsBloc, ExamsState>(
      builder: (context, state) {
        if (state is ExamsInitial) {
          context.read<ExamsBloc>().add(GetAllExams());
        }

        if (state is ExamsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is ExamsError) {
          return const Center(
            child: Text("Hata!"),
          );
        }

        if (state is ExamsLoaded) {
          final exams = state.examModels;
          return ListView.builder(
            itemCount: exams.length,
            itemBuilder: (context, index) {
              return ExamCard(exam: exams[index]);
            },
          );
        }

        return const Center(
          child: Text("No Data!"),
        );
      },
    );
  }
}
