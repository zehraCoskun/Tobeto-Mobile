import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tobeto_mobil/consts/constants.dart';

class AnnouncementItemWidget extends StatelessWidget {
  const AnnouncementItemWidget({
    super.key,
    required this.type,
    required this.organisation,
    required this.title,
    required this.publicationDate,
  });

  final String type; //duyuru veya haber
  final String organisation; //istanbul kodluyor ve şu an sadece
  final String title;
  final String publicationDate;

  @override
  Widget build(BuildContext context) {
    // Dışarıdan alınan tarih bilgisini DateTime nesnesine çevirme
    DateTime externalDateTime = DateTime.parse(publicationDate);
    // Tarihi istediğin biçimde biçimlendirme
    String formattedDate = DateFormat('dd.MM.yyyy').format(externalDateTime);

    return Card(
      elevation: 4, // Kartın gölge efekti
      child: Container(
        height: 130,
        padding: const EdgeInsets.all(padding16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(type),
                Text(organisation),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontSize: font18, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(formattedDate),
                TextButton(
                  onPressed: () {},
                  child: Text("Devamını Oku"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
