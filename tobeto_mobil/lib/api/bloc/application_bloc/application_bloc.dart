import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/application_bloc/application_event.dart';
import 'package:tobeto_mobil/api/bloc/application_bloc/application_state.dart';
import 'package:tobeto_mobil/api/business/services/application_service.dart';
import 'package:tobeto_mobil/models/firebase_models/application_model.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  final ApplicationService _applicationService;
  ApplicationBloc(this._applicationService) : super(const ApplicationStateInitial()) {
    on<ApplicationEventFetch>((event, emit) => _onFetchApplications(event, emit));
  }

  Future<void> _onFetchApplications(ApplicationEventFetch event, Emitter<ApplicationState> emit) async {
    emit(const ApplicationStateLoading(isLoading: false));
    try {
      final List<ApplicationModel> applications = await _applicationService.getAllApplication();
      emit(ApplicationStateLoaded(applications));
    } catch (e) {
      emit(ApplicationStateError(errorMessage: e.toString()));
    }
  }
}
