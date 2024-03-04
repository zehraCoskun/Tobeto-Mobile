import 'package:flutter/foundation.dart' show immutable;
import 'package:tobeto_mobil/api/business/requests/user_requests/user_create_request.dart';
import 'package:tobeto_mobil/api/business/requests/user_requests/user_update_request.dart';

@immutable
abstract class UserEvent {}

@immutable
class UserEventCreate implements UserEvent {
  final UserCreateRequest request;

  const UserEventCreate({
    required this.request,
  });
}

@immutable
class UserEventUpdate implements UserEvent {
  final UserUpdateRequest request;

  const UserEventUpdate({
    required this.request,
  });
}

@immutable
class UserEventFetch implements UserEvent {
  final String id;

  const UserEventFetch({
    required this.id,
  });
}
