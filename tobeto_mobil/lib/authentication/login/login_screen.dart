import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tobeto_mobil/authentication/login/login_form_widget.dart';
import 'package:tobeto_mobil/consts/constants.dart';
import 'package:tobeto_mobil/core/widgets/background_widget.dart';
import 'package:tobeto_mobil/widgets/clipper_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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

          Align(
            alignment: Alignment.topCenter,
            child: Lottie.network(
              "https://lottie.host/a20e84e5-14bf-427b-b18a-79b409fbe1b6/C7azsyk4R7.json",
              height: size.height * 0.4,
            ),
          ),
        ],
      ),
      //! buranın değişmesi gerekiyor, ama nasıl?
      floatingActionButton: Image.asset(
        logo,
        color: Theme.of(context).colorScheme.onError,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
