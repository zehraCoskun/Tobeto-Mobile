import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/exam_bloc/exam_event.dart';
import 'package:tobeto_mobil/api/bloc/exam_bloc/exam_state.dart';
import 'package:tobeto_mobil/api/business/services/exam_service.dart';
import 'package:tobeto_mobil/models/firebase_models/exam_model.dart';

class ExamBloc extends Bloc<ExamEvent, ExamState> {
  final ExamService _examService;
  ExamBloc(this._examService) : super(const ExamStateInitial()) {
    on<ExamEventFetch>((event, emit) => _onFetchExams(event, emit));
  }

  Future<void> _onFetchExams(ExamEventFetch event, Emitter<ExamState> emit) async {
    emit(const ExamStateLoading(isLoading: false));
    try {
      final List<ExamModel> exams = await _examService.getAllExam();
      emit(ExamStateLoaded(exams));
    } catch (e) {
      emit(ExamStateError(errorMessage: e.toString()));
    }
  }
}
