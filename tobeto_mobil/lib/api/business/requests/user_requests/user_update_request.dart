import 'dart:io';

import 'package:tobeto_mobil/models/enums/classroom.dart';
import 'package:tobeto_mobil/models/user/badge_model.dart';
import 'package:tobeto_mobil/models/user/certificate_model.dart';
import 'package:tobeto_mobil/models/user/talent_model.dart';
import 'package:tobeto_mobil/models/user/user_model.dart';

class UserUpdateRequest {
  String id;
  File? imageFile;
  File? certificateFile;
  String? fullName;
  String? email;
  DateTime? birthDate;
  String? imageUrl;
  String? phoneNumber;
  Classroom? classroom;
  List<TalentModel>? talents;
  List<CertificateModel>? certificates;
  List<BadgeModel>? badges;

  String? github;
  String? linkedin;
  String? facebook;
  String? twitter;
  String? instagram;

  UserUpdateRequest({
    required this.id,
    this.imageFile,
    this.certificateFile,
    this.fullName,
    this.email,
    this.birthDate,
    this.imageUrl,
    this.phoneNumber,
    this.classroom,
    this.talents,
    this.certificates,
    this.badges,
    this.github,
    this.linkedin,
    this.facebook,
    this.twitter,
    this.instagram,
  });

  Map<String, dynamic> toMap() {
    return UserModel(
      fullName: fullName,
      email: email,
      birthDate: birthDate,
      imageUrl: imageUrl,
      phoneNumber: phoneNumber,
      classroom: classroom,
      talents: talents,
      certificates: certificates,
      badges: badges,
      github: github,
      linkedin: linkedin,
      facebook: facebook,
      twitter: twitter,
      instagram: instagram,
    ).toMap();
  }
}
