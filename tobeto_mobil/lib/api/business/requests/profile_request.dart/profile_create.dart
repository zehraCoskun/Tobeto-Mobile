import 'package:tobeto_mobil/models/firebase_models/profile_model.dart';

class ProfileCreateRequest {
  final String fullName;
  final String email;
  final DateTime birthDate;
  final String phoneNumber;

  final String github;
  final String linkedin;
  final String facebook;
  final String twitter;
  final String instagram;

  ProfileCreateRequest({
    required this.fullName,
    required this.email,
    required this.birthDate,
    required this.phoneNumber,
    required this.github,
    required this.linkedin,
    required this.facebook,
    required this.twitter,
    required this.instagram,
  });

  ProfileModel toModel() {
    return ProfileModel(
      fullName: fullName,
      email: email,
      birthDate: birthDate,
      phoneNumber: phoneNumber,
      github: github,
      linkedin: linkedin,
      facebook: facebook,
      twitter: twitter,
      instagram: instagram,
    );
  }
}
