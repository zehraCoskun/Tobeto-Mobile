import 'package:flutter/material.dart';
import 'package:tobeto_mobil/authentication/login/login_form_widget.dart';
import 'package:tobeto_mobil/colors/tobeto_colors.dart';
import 'package:tobeto_mobil/consts/constants.dart';
import 'package:tobeto_mobil/core/widgets/background_widget.dart';
import 'package:tobeto_mobil/widgets/clipper_background_widdget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          BackgroundWidget(
            clipper: ClipperWidget(),
          ),

          //buradan Kullanici adi ve sifre text fieldlarini cagiriyorum LoginFormWidget icerisindende butonlari
          //cagiriyorum
          const LoginFormWidget(),
        ],
      ),
      floatingActionButton: Image.asset(
        logo,
        color: MyColors.mainColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
