import 'package:tobeto_mobil/models/firebase_models/badge_model.dart';
import 'package:tobeto_mobil/models/firebase_models/profile_model.dart';

class ProfileUpdateRequest {
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

  ProfileUpdateRequest({
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

  ProfileModel toModel() {
    return ProfileModel(
      fullName: fullName,
      email: email,
      birthDate: birthDate,
      phoneNumber: phoneNumber,
      talents: talents,
      certificates: certificates,
      badges: badges,
      github: github,
      linkedin: linkedin,
      facebook: facebook,
      twitter: twitter,
      instagram: instagram,
    );
  }
}
