import 'package:bloc/bloc.dart';
import 'package:tobeto_mobil/api/bloc/survey/surveys_bloc/surveys_event.dart';
import 'package:tobeto_mobil/api/bloc/survey/surveys_bloc/surveys_state.dart';
import 'package:tobeto_mobil/api/repository/survey_repository.dart';

class SurveysBloc extends Bloc<SurveysEvent, SurveysState> {
  final SurveyRepository surveyRepository;

  SurveysBloc({
    required this.surveyRepository,
  }) : super(SurveysInitial()) {
    on<GetAllSurveys>(_onGetAll);
  }

  void _onGetAll(
      GetAllSurveys event, Emitter<SurveysState> emit) async {
    emit(SurveysLoading());

    final surveyModels = await surveyRepository.getAllSurveys();

    emit(SurveysLoaded(surveyModels: surveyModels));
  }
}