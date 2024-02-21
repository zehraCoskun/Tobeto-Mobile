import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/exam_bloc/exam_bloc.dart';
import 'package:tobeto_mobil/api/bloc/exam_bloc/exam_event.dart';
import 'package:tobeto_mobil/api/bloc/exam_bloc/exam_state.dart';
import 'package:tobeto_mobil/pages/home/exam_view/exam_card.dart';

class ExamView extends StatelessWidget {
  const ExamView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExamBloc, ExamState>(
      builder: (context, state) {
        if (state is ExamStateInitial) {
          context.read<ExamBloc>().add(const ExamEventFetch());
        }
        if (state is ExamStateLoaded) {
          return ListView.builder(
            itemCount: state.exams.length,
            itemBuilder: (context, index) {
              return ExamCard(exam: state.exams[index]);
            },
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
