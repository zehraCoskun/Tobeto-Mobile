import 'package:flutter/foundation.dart';
import 'package:tobeto_mobil/api/business/requests/profile_request.dart/profile_create.dart';

@immutable
abstract class ProfileEvent {}

@immutable
class ProfileEventCreate implements ProfileEvent {
  final String docId;
  final ProfileCreateRequest request;

  const ProfileEventCreate({
    required this.docId,
    required this.request,
  });
}




