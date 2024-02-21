import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_event.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_state.dart';
import 'package:tobeto_mobil/api/business/services/education_service.dart';
import 'package:tobeto_mobil/models/education/education_model.dart';

class EducationBloc extends Bloc<EducationEvent, EducationState> {
  final EducationService _educationService;
  EducationBloc(this._educationService) : super(const EducationStateInitial()) {
    on<EducationEventFetch>((event, emit) => _onFetchEducations(event, emit));
  }

  Future<void> _onFetchEducations(EducationEventFetch event, Emitter<EducationState> emit) async {
    emit(const EducationStateLoading(isLoading: false));
    try {
      final List<EducationModel> educations = await _educationService.getAllEducation();
      emit(EducationStateLoaded(educations));
    } catch (e) {
      emit(EducationStateError(errorMessage: e.toString()));
    }
  }
}
