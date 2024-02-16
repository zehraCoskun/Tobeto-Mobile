import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/exam_bloc/exam_bloc.dart';
import 'package:tobeto_mobil/api/bloc/exam_bloc/exam_event.dart';
import 'package:tobeto_mobil/api/bloc/exam_bloc/exam_state.dart';
import 'package:tobeto_mobil/constants/text_list.dart';
import 'package:tobeto_mobil/core/widgets/error_snackbar_widget.dart';
import 'package:tobeto_mobil/pages/home/exam_view/exam_card.dart';

class ExamList extends StatelessWidget {
  const ExamList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExamBloc, ExamState>(builder: (context, state) {
      if (state is ExamStateInitial) {
        context.watch<ExamBloc>().add(const ExamEventFetch());
        return const CircularProgressIndicator();
      } else if (state is ExamStateLoading) {
        return const CircularProgressIndicator();
      } else if (state is ExamStateLoaded) {
        return ListView.builder(
          itemCount: state.exams.length,
          itemBuilder: (context, index) {
            return ExamCard(exam: state.exams[index]);
          },
        );
      } else if (state is ExamStateError) {
        return ErrorSnackBar(errorMessage: state.errorMessage);
      } else {
        return const ErrorSnackBar(errorMessage: errorMessage);
      }
    });
  }
}
