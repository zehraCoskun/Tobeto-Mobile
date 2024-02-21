import 'package:flutter/widgets.dart';
import 'package:tobeto_mobil/models/application_model.dart';

@immutable
abstract class ApplicationState {
  final bool isLoading;
  const ApplicationState({this.isLoading = false});
}

class ApplicationStateInitial extends ApplicationState {
  const ApplicationStateInitial({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

class ApplicationStateLoading extends ApplicationState {
  const ApplicationStateLoading({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

class ApplicationStateLoaded extends ApplicationState {
  final List<ApplicationModel> applications;
  const ApplicationStateLoaded(this.applications);
}

@immutable
class ApplicationStateError extends ApplicationState {
  final String errorMessage;

  const ApplicationStateError({
    required this.errorMessage,
  }) : super(isLoading: false);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ApplicationStateError && other.errorMessage == errorMessage;
  }

  @override
  int get hashCode => errorMessage.hashCode;
}
