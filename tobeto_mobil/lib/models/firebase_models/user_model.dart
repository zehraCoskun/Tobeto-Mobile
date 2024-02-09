import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tobeto_mobil/core/entities/entity.dart';

class UserModel extends Entity {
  final String? fullName;
  final String? email;
  final DateTime? birthDate;
  final String? phoneNumber;
  final String? profileImage;

  final List<String>? competences;
  final List<String>? certificates;
  final List<String>? badges;

  final String? github;
  final String? linkedin;
  final String? facebook;
  final String? twitter;
  final String? instagram;

  UserModel({
    this.fullName,
    this.email,
    this.birthDate,
    this.phoneNumber,
    this.profileImage,
    this.certificates,
    this.competences,
    this.badges,
    this.github,
    this.linkedin,
    this.facebook,
    this.twitter,
    this.instagram,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      fullName: map["full_name"] as String?,
      email: map["email"] as String?,
      birthDate: (map["birth_date"] as Timestamp?)?.toDate(),
      phoneNumber: map["phone_number"] as String?,
      profileImage: map["profile_image"] as String?,
      competences: (map["competences"] as List<dynamic>?)?.map((e) => e.toString()).toList(),
      certificates: (map["certificates"] as List<dynamic>?)?.map((e) => e.toString()).toList(),
      badges: (map["badges"] as List<dynamic>?)?.map((e) => e.toString()).toList(),
      github: map["github"] as String?,
      linkedin: map["linkedin"] as String?,
      facebook: map["facebook"] as String?,
      twitter: map["twitter"] as String?,
      instagram: map["instagram"] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    final classMap = _createClassMap();

    final Map<String, dynamic> map = {};

    for (MapEntry<String, dynamic> entry in classMap.entries) {
      if (entry.value != null) {
        map.addEntries([entry]);
      }
    }
    return map;
  }

  Map<String, dynamic> _createClassMap() {
    return {
      "full_name": fullName,
      "email": email,
      "birth_date": birthDate != null ? Timestamp.fromDate(birthDate!) : null,
      "phone_number": phoneNumber,
      "profile_image": profileImage,
      //"competences": competences,
      //"certificates": certificates,
      // "badges": badges?.map((badge) => badge.toMap()),
      "github": github,
      "linkedin": linkedin,
      "facebook": facebook,
      "twitter": twitter,
      "instagram": instagram,
    };
  }
}
