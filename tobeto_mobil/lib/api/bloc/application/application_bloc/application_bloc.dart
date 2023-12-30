import 'package:bloc/bloc.dart';
import 'package:tobeto_mobil/api/bloc/application/application_bloc/application_event.dart';
import 'package:tobeto_mobil/api/bloc/application/application_bloc/application_state.dart';
import 'package:tobeto_mobil/api/repository/application_repository.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  final ApplicationRepository applicationRepository;

  ApplicationBloc({required this.applicationRepository})
      : super(ApplicationInitial()) {
    on<AddApplication>(_onAdd);
    on<UpdateApplication>(_onUpdate);
    on<DeleteApplication>(_onDelete);
    on<GetApplication>(_onGet);
  }

  void _onAdd(AddApplication event, Emitter<ApplicationState> emit) async {
    emit(ApplicationLoading());

    final response = await applicationRepository.addApplication(
      event.applicationModel,
    );

    if (response) {
      emit(ApplicationSuccess());
    } else {
      emit(ApplicationError());
    }
  }

  void _onUpdate(
      UpdateApplication event, Emitter<ApplicationState> emit) async {
    emit(ApplicationLoading());

    final response = await applicationRepository.updateApplication(
      event.applicationModel,
    );

    if (response) {
      emit(ApplicationSuccess());
    } else {
      emit(ApplicationError());
    }
  }

  void _onDelete(
      DeleteApplication event, Emitter<ApplicationState> emit) async {
    emit(ApplicationLoading());

    final response = await applicationRepository.deleteApplication(
      event.id,
    );

    if (response) {
      emit(ApplicationSuccess());
    } else {
      emit(ApplicationError());
    }
  }

  void _onGet(GetApplication event, Emitter<ApplicationState> emit) async {
    emit(ApplicationLoading());

    final applicationModel = await applicationRepository.getApplication(
      event.id,
    );

    if (applicationModel != null) {
      emit(ApplicationLoaded(applicationModel: applicationModel));
    } else {
      emit(ApplicationError());
    }
  }
}
