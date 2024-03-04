import 'package:flutter/foundation.dart' show immutable;
import 'package:tobeto_mobil/models/user/user_model.dart';

@immutable
abstract class UserState {
  const UserState();
}

@immutable
class UserStateLoading extends UserState {
  const UserStateLoading();
}

@immutable
class UserStateInitial extends UserState {
  const UserStateInitial();
}

@immutable
class UserStateCreated extends UserState {
  const UserStateCreated();
}

@immutable
class UserStateUpdated extends UserState {
  const UserStateUpdated();
}

@immutable
class UserStateFetched extends UserState {
  final UserModel userModel;

  const UserStateFetched({
    required this.userModel,
  });
}

@immutable
class UserStateError extends UserState {
  const UserStateError();
}