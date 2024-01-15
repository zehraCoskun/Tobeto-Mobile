import 'dart:math';

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
                const ProfilePicture(),
                const ProfileContainer(
                  child: PersonalInfo(),
                ),
                ProfileContainer(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Yetkinliklerim",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Divider(),
                      Row(
                        children: [
                          Image.asset(
                            logoT,
                            height: 32,
                            width: 32,
                          ),
                          Image.asset(
                            flutterIcon,
                            height: 32,
                            width: 32,
                          ),
                          Text("Flutter")
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ));
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: Image.asset(
          ders1,
          height: 120,
          width: 120,
        ),
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(16), boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3),
        )
      ]),
      child: child,
    );
  }
}

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      PersonalInfoRow(
        title: "Ad Soyad",
        content: "Ecmel Aydın",
        contentIcon: Icons.person_2_outlined,
      ),
      PersonalInfoRow(
        title: "Doğum Tarihi",
        content: "05/09/1970",
        contentIcon: Icons.calendar_month_outlined,
      ),
      PersonalInfoRow(
        title: "E-Posta adresi",
        content: "ecmelaydin@mail.com",
        contentIcon: Icons.mail_outline_rounded,
      ),
      PersonalInfoRow(
        title: "Telefon Numarası",
        content: "+905055050000",
        contentIcon: Icons.phone_iphone_outlined,
      ),
    ]);
  }
}

class PersonalInfoRow extends StatelessWidget {
  const PersonalInfoRow({
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
