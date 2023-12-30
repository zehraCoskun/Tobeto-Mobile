import 'package:tobeto_mobil/models/application_model.dart';

abstract class ApplicationState {}

class ApplicationInitial extends ApplicationState {}

class ApplicationLoading extends ApplicationState {}

class ApplicationLoaded extends ApplicationState {
  final ApplicationModel applicationModel;

  ApplicationLoaded({
    required this.applicationModel,
  });
}

class ApplicationError extends ApplicationState {}

class ApplicationSuccess extends ApplicationState {}