//kişşisel bilgiler içerik
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/profile/personal_info_row_widget.dart';

class PersonalInfoColumnWidget extends StatelessWidget {
  const PersonalInfoColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      PersonalInfoRowWidget(
        title: "Ad Soyad",
        content: "Ecmel Aydın",
        contentIcon: Icons.person_2_outlined,
      ),
      PersonalInfoRowWidget(
        title: "Doğum Tarihi",
        content: "05/09/1970",
        contentIcon: Icons.calendar_month_outlined,
      ),
      PersonalInfoRowWidget(
        title: "E-Posta adresi",
        content: "ecmelaydin@mail.com",
        contentIcon: Icons.mail_outline_rounded,
      ),
      PersonalInfoRowWidget(
        title: "Telefon Numarası",
        content: "+905055050000",
        contentIcon: Icons.phone_iphone_outlined,
      ),
    ]);
  }
}






