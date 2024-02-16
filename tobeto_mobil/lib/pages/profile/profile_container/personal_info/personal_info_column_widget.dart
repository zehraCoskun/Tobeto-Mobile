import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tobeto_mobil/models/firebase_models/user/user_model.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/personal_info/personal_info_row_widget.dart';

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
        content: user.fullName!,
        contentIcon: Icons.person_2_outlined,
      ),
      PersonalInfoRowWidget(
        title: "Doğum Tarihi",
        content: user.birthDate != null
            ? DateFormat.yMMMMd().format(user.birthDate!)
            : "DD/MM/YYYY",
        contentIcon: Icons.calendar_month_outlined,
      ),
      PersonalInfoRowWidget(
        title: "E-Posta adresi",
        content: user.email!,
        contentIcon: Icons.mail_outline_rounded,
      ),
      PersonalInfoRowWidget(
        title: "Telefon Numarası",
        content: user.phoneNumber ?? "(___) ___ ____",
        contentIcon: Icons.phone_iphone_outlined,
      ),
    ]);
  }
}
