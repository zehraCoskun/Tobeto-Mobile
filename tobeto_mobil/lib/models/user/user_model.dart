import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tobeto_mobil/core/models/entity.dart';
import 'package:tobeto_mobil/models/enums/classroom.dart';
import 'package:tobeto_mobil/models/user/badge_model.dart';
import 'package:tobeto_mobil/models/user/certificate_model.dart';
import 'package:tobeto_mobil/models/user/talent_model.dart';

class UserModel extends Entity {
  final String? fullName;
  final String? email;
  final DateTime? birthDate;
  final String? imageUrl;
  final String? phoneNumber;

  final Classroom? classroom;

  final List<TalentModel>? talents;
  final List<CertificateModel>? certificates;
  final List<BadgeModel>? badges;

  final String? github;
  final String? linkedin;
  final String? facebook;
  final String? twitter;
  final String? instagram;

  UserModel({
    this.fullName,
    this.email,
    this.birthDate,
    this.imageUrl,
    this.phoneNumber,
    this.classroom,
    this.certificates,
    this.talents,
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
      imageUrl: map["image_url"] as String?,
      phoneNumber: map["phone_number"] as String?,
      classroom: Classroom.getClassroom(map["classroom"] as String?),
      talents: (map["talents"] as List<dynamic>?)
          ?.map((talent) => TalentModel.fromMap(talent))
          .toList(),
      certificates: (map["certificates"] as List<dynamic>?)
          ?.map((certificate) => CertificateModel.fromMap(certificate))
          .toList(),
      badges: (map["badges"] as List<dynamic>?)
          ?.map((badge) => BadgeModel.fromMap(badge))
          .toList(),
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
      "birth_date": birthDate,
      "image_url": imageUrl,
      "phone_number": phoneNumber,
      "classroom": classroom,
      "talents": talents?.map((talent) => talent.toMap()),
      "certificates": certificates?.map((certificate) => certificate.toMap()),
      "badges": badges?.map((badge) => badge.toMap()),
      "github": github,
      "linkedin": linkedin,
      "facebook": facebook,
      "twitter": twitter,
      "instagram": instagram,
    };
  }
}
