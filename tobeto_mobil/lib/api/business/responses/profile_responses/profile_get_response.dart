import 'package:tobeto_mobil/models/firebase_models/badge_model.dart';
import 'package:tobeto_mobil/models/firebase_models/profile_model.dart';

class ProfileGetResponse {
  final String? fullName;
  final String? email;
  final DateTime? birthDate;

  final String? phoneNumber;

  final List<String>? talents;
  final List<String>? certificates;
  final List<BadgeModel>? badges;

  final String? github;
  final String? linkedin;
  final String? facebook;
  final String? twitter;
  final String? instagram;

  ProfileGetResponse({
    this.fullName,
    this.email,
    this.birthDate,
    this.phoneNumber,
    this.talents,
    this.certificates,
    this.badges,
    this.github,
    this.linkedin,
    this.facebook,
    this.twitter,
    this.instagram,
  });

  factory ProfileGetResponse.fromModel(ProfileModel? model) {
    if (model == null) return ProfileGetResponse();
    
    return ProfileGetResponse(
      fullName: model.fullName,
      email: model.email,
      birthDate: model.birthDate,
      phoneNumber: model.phoneNumber,
      talents: model.talents,
      certificates: model.certificates,
      badges: model.badges,
      github: model.github,
      linkedin: model.linkedin,
      facebook: model.facebook,
      twitter: model.twitter,
      instagram: model.instagram,
    );
  }
}
