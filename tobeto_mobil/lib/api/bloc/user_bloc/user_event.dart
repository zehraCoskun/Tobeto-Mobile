import 'package:flutter/foundation.dart' show immutable;
import 'package:tobeto_mobil/api/business/requests/user_requests/user_update_request.dart';

@immutable
abstract class UserEvent {}

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
