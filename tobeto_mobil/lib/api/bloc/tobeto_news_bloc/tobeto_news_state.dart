import 'package:flutter/widgets.dart';
import 'package:tobeto_mobil/models/firebase_models/tobeto_announcement_model.dart';

@immutable
abstract class TobetoNewsState {
  final bool isLoading;
  const TobetoNewsState({this.isLoading = false});
}

@immutable
class TobetoNewsStateInitial extends TobetoNewsState {
  const TobetoNewsStateInitial({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

@immutable
class TobetoNewsStateLoading extends TobetoNewsState {
  const TobetoNewsStateLoading({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

@immutable
class TobetoNewsStateLoaded extends TobetoNewsState {
  final List<TobetoNewsModel> tobetoNewws;
  const TobetoNewsStateLoaded(this.tobetoNewws);
}

@immutable
class TobetoNewsStateError extends TobetoNewsState {
  final String errorMessage;

  const TobetoNewsStateError({
    required this.errorMessage,
  }) : super(isLoading: false);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TobetoNewsStateError && other.errorMessage == errorMessage;
  }

  @override
  int get hashCode => errorMessage.hashCode;
}
