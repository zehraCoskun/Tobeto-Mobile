import 'package:bloc/bloc.dart';
import 'package:tobeto_mobil/api/bloc/exam/exams_bloc/exams_event.dart';
import 'package:tobeto_mobil/api/bloc/exam/exams_bloc/exams_state.dart';
import 'package:tobeto_mobil/api/repository/exam_repository.dart';

class ExamsBloc extends Bloc<ExamsEvent, ExamsState> {
  final ExamRepository examRepository;

  ExamsBloc({
    required this.examRepository,
  }) : super(ExamsInitial()) {
    on<GetAllExams>(_onGetAll);
  }

  void _onGetAll(
      GetAllExams event, Emitter<ExamsState> emit) async {
    emit(ExamsLoading());

    final examModels = await examRepository.getAllExams();

    emit(ExamsLoaded(examModels: examModels));
  }
}