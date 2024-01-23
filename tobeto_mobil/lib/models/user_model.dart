class UserModel {
  final String id;
  final String userName;
  final String userBirthDate;
  final String userEmail;
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

  UserModel({
    required this.id,
    required this.userName,
    required this.userBirthDate,
    required this.userEmail,
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
  });
}
