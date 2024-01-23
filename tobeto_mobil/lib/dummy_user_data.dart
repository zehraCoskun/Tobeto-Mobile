import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/pages/profile_text.dart';
import 'package:tobeto_mobil/models/user_model.dart';

final user1 = UserModel(
  id: "1",
  userName: "Ecmel Aydın",
  userBirthDate: "05/09/1970",
  userEmail: "ecmelaydin@mail.com",
  userPhoneNumber: "+90 505 505 05 05",
  userPicture: ders1,
  compteneces: [CompetenceList[0], CompetenceList[1], CompetenceList[2], CompetenceList[3]],
  certificates: ["Tobeto- Flutter ile Mobil Geliştirme"],
  //githubLink: githubUrl,
  linkedinLink: linkedinUrl,
  facebookLink: facebookUrl,
  twitterLink: twitterUrl,
  instagramLink: instagramUrl,
  badges: [badge1, badge2, badge3, badge4, badge5, badge6, badge7, badge8],
);

final List<String> CompetenceList = [
  "Flutter",
  "iOS",
  "Kotlin",
  "React Native",
  "Java",
  "C#",
  "Python",
  "Flutter",
  "iOS",
  "Kotlin",
  "React Native",
  "Java",
  "C#",
  "Python",
  "Flutter",
  "iOS",
  "Kotlin",
  "React Native",
  "Java",
  "C#",
  "Python",
];
