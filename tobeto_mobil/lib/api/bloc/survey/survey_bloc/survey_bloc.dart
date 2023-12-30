import 'package:bloc/bloc.dart';
import 'package:tobeto_mobil/api/bloc/survey/survey_bloc/survey_event.dart';
import 'package:tobeto_mobil/api/bloc/survey/survey_bloc/survey_state.dart';
import 'package:tobeto_mobil/api/repository/survey_repository.dart';

class SurveyBloc extends Bloc<SurveyEvent, SurveyState> {
  final SurveyRepository surveyRepository;

  SurveyBloc({required this.surveyRepository})
      : super(SurveyInitial()) {
    on<AddSurvey>(_onAdd);
    on<UpdateSurvey>(_onUpdate);
    on<DeleteSurvey>(_onDelete);
    on<GetSurvey>(_onGet);
  }

  void _onAdd(AddSurvey event, Emitter<SurveyState> emit) async {
    emit(SurveyLoading());

    final response = await surveyRepository.addSurvey(
      event.surveyModel,
    );

    if (response) {
      emit(SurveySuccess());
    } else {
      emit(SurveyError());
    }
  }

  void _onUpdate(UpdateSurvey event, Emitter<SurveyState> emit) async {
    emit(SurveyLoading());

    final response = await surveyRepository.updateSurvey(
      event.surveyModel,
    );

    if (response) {
      emit(SurveySuccess());
    } else {
      emit(SurveyError());
    }
  }

  void _onDelete(DeleteSurvey event, Emitter<SurveyState> emit) async {
    emit(SurveyLoading());

    final response = await surveyRepository.deleteSurvey(
      event.id,
    );

    if (response) {
      emit(SurveySuccess());
    } else {
      emit(SurveyError());
    }
  }

  void _onGet(GetSurvey event, Emitter<SurveyState> emit) async {
    emit(SurveyLoading());

    final surveyModel = await surveyRepository.getSurvey(
      event.id,
    );

    if (surveyModel != null) {
      emit(SurveyLoaded(surveyModel: surveyModel));
    } else {
      emit(SurveyError());
    }
  }
}