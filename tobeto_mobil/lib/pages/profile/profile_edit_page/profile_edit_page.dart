import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/pages/profile_text.dart';
import 'package:tobeto_mobil/core/widgets/secondary_background.dart';
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
          child: Form(
            key: _formKey,
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
                ProfileTextField(controller: _phoneController, labelText: 'Telefon Numarası', valueIsEmpty: 'Lütfen teledon numaranızı giriniz'),
                //!
                InfoTitleWidget(title: "Yetkinliklerim"),
                ProfileTextField(
                  controller: _emailController,
                  labelText: "Yetkinlikler",
                  valueIsEmpty: "",
                ),
                //!
                const InfoTitleWidget(title: "Sertifikalarım"),
                ProfileTextField(
                  controller: _emailController,
                  labelText: "Sertifikalar",
                  valueIsEmpty: "",
                ),
                //!
                const InfoTitleWidget(title: "Sosyal Medya Hesaplarım"),
                ProfileTextField(
                  controller: _emailController,
                  labelText: "Github",
                  valueIsEmpty: "",
                  icon: Image.asset(
                    github,
                    height: 32,
                    width: 32,
                  ),
                ),
                ProfileTextField(
                  controller: _emailController,
                  labelText: "Linkedin",
                  valueIsEmpty: "",
                  icon: Image.asset(
                    linkedin,
                    height: 32,
                    width: 32,
                  ),
                ),
                ProfileTextField(
                  controller: _emailController,
                  labelText: "Facebook",
                  valueIsEmpty: "",
                  icon: Image.asset(
                    facebook,
                    height: 32,
                    width: 32,
                  ),
                ),
                ProfileTextField(
                  controller: _emailController,
                  labelText: "X",
                  valueIsEmpty: "",
                  icon: Image.asset(
                    twitterX,
                    height: 32,
                    width: 32,
                  ),
                ),
                ProfileTextField(
                  controller: _emailController,
                  labelText: "Instagram",
                  valueIsEmpty: "",
                  icon: Image.asset(
                    instagram,
                    height: 32,
                    width: 32,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({
    super.key,
    required TextEditingController controller,
    required this.labelText,
    required this.valueIsEmpty,
    this.icon,
  }) : _controller = controller;

  final TextEditingController _controller;
  final String labelText;
  final String valueIsEmpty;

  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: [ProfileShadow()]),
      child: TextFormField(
        controller: _controller,
        decoration: InputDecoration(
          labelText: labelText,
          icon: icon,
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return valueIsEmpty;
          }
          return null;
        },
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
      style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 22, color: Colors.black),
    );
  }
}
