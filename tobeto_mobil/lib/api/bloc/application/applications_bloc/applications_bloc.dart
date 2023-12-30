import 'package:bloc/bloc.dart';
import 'package:tobeto_mobil/api/bloc/application/applications_bloc/applications_event.dart';
import 'package:tobeto_mobil/api/bloc/application/applications_bloc/applications_state.dart';
import 'package:tobeto_mobil/api/repository/application_repository.dart';

class ApplicationsBloc extends Bloc<ApplicationsEvent, ApplicationsState> {
  final ApplicationRepository applicationRepository;

  ApplicationsBloc({
    required this.applicationRepository,
  }) : super(ApplicationsInitial()) {
    on<GetAllApplications>(_onGetAll);
  }

  void _onGetAll(
      GetAllApplications event, Emitter<ApplicationsState> emit) async {
    emit(ApplicationsLoading());

    final applicationModels = await applicationRepository.getAllApplications();

    emit(ApplicationsLoaded(applicationModels: applicationModels));
  }
}
