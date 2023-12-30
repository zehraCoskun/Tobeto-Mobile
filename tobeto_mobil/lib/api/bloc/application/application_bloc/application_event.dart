import 'package:tobeto_mobil/models/application_model.dart';

abstract class ApplicationEvent {}

class AddApplication extends ApplicationEvent {
  final ApplicationModel applicationModel;

  AddApplication({
    required this.applicationModel,
  });
}

class UpdateApplication extends ApplicationEvent {
  final ApplicationModel applicationModel;

  UpdateApplication({
    required this.applicationModel,
  });
}

class DeleteApplication extends ApplicationEvent {
  final String id;

  DeleteApplication({
    required this.id,
  });
}

class GetApplication extends ApplicationEvent {
  final String id;

  GetApplication({
    required this.id,
  });
}
