import 'package:flutter/foundation.dart' show immutable;
import 'package:tobeto_mobil/api/business/requests/user_requests/user_create_request.dart';

@immutable
abstract class UserEvent {}

@immutable
class UserEventCreate implements UserEvent {
  final String docId;
  final UserCreateRequest request;

  const UserEventCreate({
    required this.docId,
    required this.request,
  });
}
