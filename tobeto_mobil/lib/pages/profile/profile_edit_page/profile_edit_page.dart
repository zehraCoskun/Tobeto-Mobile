import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/pages/profile_text.dart';
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InfoTitleWidget(
                title: "Profil Bilgilerim",
              ),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Ad Soyad'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen adınızı ve soyadınızı girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'E-posta adresi'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen e-posta adresinizi giriniz';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: 'Telefon Numarası'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen teledon numaranızı giriniz';
                  }
                  return null;
                },
              ),
              const InfoTitleWidget(title: "Yetkinliklerim"),
              TextFormField(
                decoration: InputDecoration(labelText: "Yetkinlikler"),
              ),
              const InfoTitleWidget(title: "Sertifikalarım"),
              TextFormField(
                decoration: InputDecoration(labelText: "Sertifikalar"),
              ),
              const InfoTitleWidget(title: "Sosyal Medya Hesaplarım"),
              TextFormField(
                decoration: InputDecoration(
                    icon: Image.asset(
                      github,
                      height: 32,
                      width: 32,
                    ),
                    labelText: 'Github'),
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Image.asset(
                      linkedin,
                      height: 32,
                      width: 32,
                    ),
                    labelText: 'Linkedin'),
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Image.asset(
                      facebook,
                      height: 32,
                      width: 32,
                    ),
                    labelText: 'Facebook'),
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Image.asset(
                      twitterX,
                      height: 32,
                      width: 32,
                    ),
                    labelText: 'X'),
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Image.asset(
                      instagram,
                      height: 32,
                      width: 32,
                    ),
                    labelText: 'Instagram'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoTitleWidget extends StatelessWidget {
  const InfoTitleWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 22),
    );
  }
}
