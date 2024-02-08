import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/firebase_models/user_model.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/personal_info/personal_info_row_widget.dart';

class PersonalInfoColumnWidget extends StatelessWidget {
  const PersonalInfoColumnWidget({
    super.key,
    required this.user,
  });
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PersonalInfoRowWidget(
        title: "Ad Soyad",
        content: user.fullName ?? "kullanıcı adı ekleyiniz",
        contentIcon: Icons.person_2_outlined,
      ),
      PersonalInfoRowWidget(
        title: "Doğum Tarihi",
        content: user.birthDate != null ? _formatDate(user.birthDate!) : "doğum tarihi giriniz",
        contentIcon: Icons.calendar_month_outlined,
      ),
      PersonalInfoRowWidget(
        title: "E-Posta adresi",
        content: user.email ?? "email ekleyiniz",
        contentIcon: Icons.mail_outline_rounded,
      ),
      PersonalInfoRowWidget(
        title: "Telefon Numarası",
        content: user.phoneNumber ?? "telefon numarası giriniz",
        contentIcon: Icons.phone_iphone_outlined,
      ),
    ]);
  }

  String _formatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }
}
