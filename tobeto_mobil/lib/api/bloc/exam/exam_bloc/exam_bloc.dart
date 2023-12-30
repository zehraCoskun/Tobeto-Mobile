import 'package:bloc/bloc.dart';
import 'package:tobeto_mobil/api/bloc/exam/exam_bloc/exam_event.dart';
import 'package:tobeto_mobil/api/bloc/exam/exam_bloc/exam_state.dart';
import 'package:tobeto_mobil/api/repository/exam_repository.dart';

class ExamBloc extends Bloc<ExamEvent, ExamState> {
  final ExamRepository examRepository;

  ExamBloc({required this.examRepository})
      : super(ExamInitial()) {
    on<AddExam>(_onAdd);
    on<UpdateExam>(_onUpdate);
    on<DeleteExam>(_onDelete);
    on<GetExam>(_onGet);
  }

  void _onAdd(AddExam event, Emitter<ExamState> emit) async {
    emit(ExamLoading());

    final response = await examRepository.addExam(
      event.examModel,
    );

    if (response) {
      emit(ExamSuccess());
    } else {
      emit(ExamError());
    }
  }

  void _onUpdate(UpdateExam event, Emitter<ExamState> emit) async {
    emit(ExamLoading());

    final response = await examRepository.updateExam(
      event.examModel,
    );

    if (response) {
      emit(ExamSuccess());
    } else {
      emit(ExamError());
    }
  }

  void _onDelete(DeleteExam event, Emitter<ExamState> emit) async {
    emit(ExamLoading());

    final response = await examRepository.deleteExam(
      event.id,
    );

    if (response) {
      emit(ExamSuccess());
    } else {
      emit(ExamError());
    }
  }

  void _onGet(GetExam event, Emitter<ExamState> emit) async {
    emit(ExamLoading());

    final examModel = await examRepository.getExam(
      event.id,
    );

    if (examModel != null) {
      emit(ExamLoaded(examModel: examModel));
    } else {
      emit(ExamError());
    }
  }
}