import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/pages/login_text.dart';
import 'package:tobeto_mobil/constants/sizes.dart';
import 'package:tobeto_mobil/core/widgets/background_widget.dart';
import 'package:tobeto_mobil/pages/sign_up/sign_up_button.dart';
import 'package:tobeto_mobil/pages/sign_up/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final surnameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Image(
          image: AssetImage(logo),
          height: kToolbarHeight,
          width: kToolbarHeight * 2,
        ),
      ),
      body: const BackgroundWidget(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: padding16),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  labelText: SignUpNameLabel,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.pinkAccent, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  hintText: SignUpNameHint,
                ),
              ),
              //**************************AD
              SizedBox(height: padding16),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  labelText: SignUpSurnameLabel,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.pinkAccent, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  hintText: SignUpSurnameSurname,
                ),
              ),
              //***************************SOYAD
              SizedBox(height: padding16),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  labelText: SignUpEmailLabel,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.pinkAccent, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  hintText: SignUpEmailHint,
                ),
              ),
              //************** E-MAİL
              SizedBox(height: padding16),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  labelText: SignUpSifreLabel,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.pinkAccent, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  hintText: SignUpSifreHint,
                ),
              ),
              //**************** SIFRE
              SizedBox(height: padding16),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBody(
    TextEditingController nameController,
    TextEditingController surnameController,
    TextEditingController emailController,
    TextEditingController passwordController,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SignUpForm(
          nameController: nameController,
          surnameController: surnameController,
          emailController: emailController,
          passwordController: passwordController,
        ),
        const SignUpButton(),
      ],
    );
  }
}
