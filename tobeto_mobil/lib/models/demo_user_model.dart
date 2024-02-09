import 'package:tobeto_mobil/models/firebase_models/application_model.dart';
import 'package:tobeto_mobil/models/education/education_model.dart';
import 'package:tobeto_mobil/models/exam_model.dart';

class DemoUserModel {
  final String id;
  final String userName;
  final String userBirthDate;
  final String email;
  final String password;
  final String userPhoneNumber;
  final String? userPicture;

  final List<String>? compteneces;
  final List<String>? certificates;

  final String? githubLink;
  final String? linkedinLink;
  final String? facebookLink;
  final String? twitterLink;
  final String? instagramLink;

  final List<String>? badges;
  final List<ExamModel>? exams;
  final List<ApplicationModel>? applications;
  final List<EducationModel>? educations;

  DemoUserModel({
    required this.id,
    required this.userName,
    required this.userBirthDate,
    required this.email,
    required this.password,
    required this.userPhoneNumber,
    this.userPicture,
    this.githubLink,
    this.linkedinLink,
    this.facebookLink,
    this.twitterLink,
    this.instagramLink,
    this.compteneces,
    this.certificates,
    this.badges,
    this.applications,
    this.educations,
    this.exams,
  });
}