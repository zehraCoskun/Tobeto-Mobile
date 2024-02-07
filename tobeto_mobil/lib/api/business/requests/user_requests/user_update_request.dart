import 'package:tobeto_mobil/models/firebase_models/badge_model.dart';
import 'package:tobeto_mobil/models/firebase_models/user_model.dart';

class UserUpdateRequest {
  final String? fullName;
  final String? email;
  // final DateTime? birthDate;

  // final String? phoneNumber;

  // final List<String>? talents;
  // final List<String>? certificates;
  // final List<BadgeModel>? badges;

  // final String? github;
  // final String? linkedin;
  // final String? facebook;
  // final String? twitter;
  // final String? instagram;

  UserUpdateRequest({
    this.fullName,
    this.email,
    // this.birthDate,
    // this.phoneNumber,
    // this.certificates,
    // this.talents,
    // this.badges,
    // this.github,
    // this.linkedin,
    // this.facebook,
    // this.twitter,
    // this.instagram,
  });

  UserModel toModel() {
    return UserModel(
      fullName: fullName,
      email: email,
      // birthDate: birthDate,
      // phoneNumber: phoneNumber,
      // certificates: certificates,
      // talents: talents,
      // badges: badges,
      // github: github,
      // linkedin: linkedin,
      // facebook: facebook,
      // twitter: twitter,
      // instagram: instagram,
    );
  }
}
