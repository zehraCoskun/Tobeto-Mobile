import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/core/widgets/background_widget.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            logo,
            height: kToolbarHeight - 10,
          ),
          actions: const [
            Icon(Icons.share),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(Icons.edit),
            ),
          ],
        ),
        body: BackgroundWidget(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      ders1,
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  height: 32,
                ),
                const ProfilInfoWidget(
                  title: "Ad Soyad",
                  content: "Ecmel Aydın",
                  contentIcon: Icons.person_2_outlined,
                ),
                const ProfilInfoWidget(
                  title: "Doğum Tarihi",
                  content: "05/09/1970",
                  contentIcon: Icons.calendar_month_outlined,
                ),
                const ProfilInfoWidget(
                  title: "E-Posta adresi",
                  content: "ecmelaydin@mail.com",
                  contentIcon: Icons.mail_outline_rounded,
                ),
                const ProfilInfoWidget(
                  title: "Telefon Numarası",
                  content: "+905055050000",
                  contentIcon: Icons.phone_iphone_outlined,
                ),
              ],
            ),
          ),
        ));
  }
}

class ProfilInfoWidget extends StatelessWidget {
  const ProfilInfoWidget({
    super.key,
    required this.title,
    required this.content,
    required this.contentIcon,
  });
  final String title;
  final String content;
  final IconData contentIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              contentIcon,
              size: 26,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: TobetoLightColors.acikSiyah, fontSize: 10),
              ),
              Text(
                content,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
