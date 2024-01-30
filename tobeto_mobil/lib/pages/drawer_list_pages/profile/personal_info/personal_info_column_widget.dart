//kişşisel bilgiler içerik
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/demo_user_model.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/personal_info/personal_info_row_widget.dart';

class PersonalInfoColumnWidget extends StatelessWidget {
  const PersonalInfoColumnWidget({
    super.key,
    required this.user,
  });
  final DemoUserModel user;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PersonalInfoRowWidget(
        title: "Ad Soyad",
        content: user.userName,
        contentIcon: Icons.person_2_outlined,
      ),
      PersonalInfoRowWidget(
        title: "Doğum Tarihi",
        content: user.userBirthDate,
        contentIcon: Icons.calendar_month_outlined,
      ),
      PersonalInfoRowWidget(
        title: "E-Posta adresi",
        content: user.email,
        contentIcon: Icons.mail_outline_rounded,
      ),
      PersonalInfoRowWidget(
        title: "Telefon Numarası",
        content: user.userPhoneNumber,
        contentIcon: Icons.phone_iphone_outlined,
      ),
    ]);
  }
}
