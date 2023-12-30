import 'package:tobeto_mobil/models/application_model.dart';

abstract class ApplicationsState {}

class ApplicationsInitial extends ApplicationsState {}

class ApplicationsLoading extends ApplicationsState {}

class ApplicationsLoaded extends ApplicationsState {
  final List<ApplicationModel> applicationModels;

  ApplicationsLoaded({
    required this.applicationModels,
  });
}

class ApplicationsError extends ApplicationsState {}

class ApplicationsSuccess extends ApplicationsState {}
