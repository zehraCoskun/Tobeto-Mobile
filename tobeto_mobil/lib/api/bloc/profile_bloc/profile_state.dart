import 'package:flutter/foundation.dart';

@immutable
abstract class ProfileState {
  final bool isLoading;
  const ProfileState({
    required this.isLoading,
  });
}

@immutable
class ProfileStateInitial extends ProfileState {
  const ProfileStateInitial({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

@immutable
class ProfileStateCreating extends ProfileState {
  const ProfileStateCreating({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}
