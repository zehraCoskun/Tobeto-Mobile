import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tobeto_mobil/constants/pages/profile_text.dart';
import 'package:tobeto_mobil/models/user/user_model.dart';
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
        title: profileFullName,
        content: user.fullName!,
        contentIcon: Icons.person_2_outlined,
      ),
      PersonalInfoRowWidget(
        title: profileBirthDate,
        content: user.birthDate != null ? DateFormat('dd/MM/yyyy').format(user.birthDate!) : "DD/MM/YYYY",
        contentIcon: Icons.calendar_month_outlined,
      ),
      PersonalInfoRowWidget(
        title: profileMail,
        content: user.email!,
        contentIcon: Icons.mail_outline_rounded,
      ),
      PersonalInfoRowWidget(
        title: profilePhone,
        content: user.phoneNumber ?? "(___) ___ ____",
        contentIcon: Icons.phone_iphone_outlined,
      ),
    ]);
  }
}
