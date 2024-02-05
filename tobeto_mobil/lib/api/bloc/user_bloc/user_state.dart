import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class UserState {
  final bool isLoading;

  const UserState({
    required this.isLoading,
  });
}

@immutable
class UserStateInitial extends UserState {
  const UserStateInitial({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

@immutable
class UserStateCreating extends UserState {
  const UserStateCreating({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}
