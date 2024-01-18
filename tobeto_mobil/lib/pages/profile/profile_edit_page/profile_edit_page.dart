import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/pages/profile_text.dart';
import 'package:tobeto_mobil/core/widgets/secondary_background.dart';
import 'package:tobeto_mobil/pages/profile/profile_edit_page/competence_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_edit_page/info_title_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_edit_page/profile_text_field.dart';
import 'package:tobeto_mobil/pages/profile/profile_shadow.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});
  @override
  State<ProfileEditPage> createState() => _ProfileEditPage();
}

class _ProfileEditPage extends State<ProfileEditPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  //final TextEditingController _competenceController = TextEditingController();
  final TextEditingController _certificateController = TextEditingController();
  final TextEditingController _githubController = TextEditingController();
  final TextEditingController _linkedinController = TextEditingController();
  final TextEditingController _facebookController = TextEditingController();
  final TextEditingController _twitterController = TextEditingController();
  final TextEditingController _instagramController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          logo,
          height: kToolbarHeight - 10,
        ),
        actions: [
          IconButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
              icon: Icon(
                Icons.check_circle_outline_outlined,
                size: kToolbarHeight - 10,
                color: TobetoDarkColors.yesil,
              ))
        ],
      ),
      body: SecondaryBackgroundWidget(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InfoTitleWidget(
                title: "Profil Bilgilerim",
              ),
              ProfileTextField(
                controller: _nameController,
                labelText: "Ad Soyad",
                valueIsEmpty: 'Lütfen adınızı ve soyadınızı girin',
              ),
              ProfileTextField(
                controller: _emailController,
                labelText: "E-Posta",
                valueIsEmpty: "Lütfen e-posta adresinizi giriniz",
              ),
              ProfileTextField(controller: _phoneController, labelText: 'Telefon Numarası', valueIsEmpty: 'Lütfen telefon numaranızı giriniz'),
              InfoTitleWidget(
                  title: "Yetkinliklerim",
                  icon: IconButton(
                      onPressed: () {
                        competenceBottomSheet(context);
                      },
                      icon: Icon(Icons.add, color: TobetoDarkColors.mor))),
              const CompetenceWidget(),
              const InfoTitleWidget(title: "Sertifikalarım"),
              OptionalProfileTextField(
                controller: _certificateController,
                labelText: "Sertifikalar",
              ),
              const InfoTitleWidget(title: "Sosyal Medya Hesaplarım"),
              OptionalProfileTextField(
                controller: _githubController,
                labelText: "Github",
                icon: Image.asset(github, height: 32, width: 32),
              ),
              OptionalProfileTextField(
                controller: _linkedinController,
                labelText: "Linkedin",
                icon: Image.asset(linkedin, height: 32, width: 32),
              ),
              OptionalProfileTextField(
                controller: _facebookController,
                labelText: "Facebook",
                icon: Image.asset(facebook, height: 32, width: 32),
              ),
              OptionalProfileTextField(
                controller: _twitterController,
                labelText: "X",
                icon: Image.asset(twitterX, height: 32, width: 32),
              ),
              OptionalProfileTextField(
                controller: _instagramController,
                labelText: "Instagram",
                icon: Image.asset(instagram, height: 32, width: 32),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> competenceBottomSheet(BuildContext context) => showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(color: TobetoDarkColors.beyaz, borderRadius: BorderRadius.circular(16), boxShadow: [ProfileShadow()]),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1 / 1,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    maxCrossAxisExtent: 150.0,
                    childAspectRatio: 3 / 1,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [ProfileShadow()],
                        ),
                        child: InkWell(
                          child: Text(
                            items[index],
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                  fontSize: 16,
                                ),
                          ),
                          onLongPress: () {
                            setState(() {
                              MyItems.add(items[index]);
                            });
                          },
                        ));
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_outlined,
                      size: 32,
                      color: TobetoDarkColors.lacivert,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.check,
                        size: 32,
                        color: TobetoDarkColors.yesil,
                      )),
                ],
              )
            ],
          ),
        );
      });
}

final List<String> items = [
  "Flutter",
  "Swift",
  "React",
  "Java Script",
  "Kotlin",
  "React Native",
  "Java",
  "C#",
  "Python",
  "MSSQL",
  "Oracle",
  "Postman",
  "Git",
  "VSCode",
  "Objective-C"
];
