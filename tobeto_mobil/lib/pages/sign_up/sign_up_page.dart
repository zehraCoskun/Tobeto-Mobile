import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/pages/login_text.dart';
import 'package:tobeto_mobil/constants/sizes.dart';
import 'package:tobeto_mobil/core/widgets/background_widget.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var snackBar = SnackBar(
    backgroundColor: TobetoDarkColors.mor,
    duration: const Duration(seconds: 3),
    content: const Row(
      children: [
        Text(
          "Kayıt olundu.",
        ),
        Icon(
          Icons.check_circle_outline_rounded,
          color: Colors.green,
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Image(
          image: AssetImage(logo),
          height: kToolbarHeight,
          width: kToolbarHeight * 2,
        ),
      ),
      body: BackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding32),
          child: Column(
            children: [
              const Image(
                image: AssetImage(logo),
                height: kToolbarHeight * 2,
                width: kToolbarHeight * 4,
                alignment: Alignment.center,
              ),
              Form(
                child: Expanded(
                  child: ListView(
                    children: [
                      SizedBox(height: padding16),
                      const TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: SignUpNameLabel,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(55)),
                            borderSide:
                                BorderSide(color: Colors.purple, width: 3.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          hintText: SignUpNameHint,
                        ),
                      ),
                      //**************************AD
                      SizedBox(height: padding16),
                      const TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: SignUpSurnameLabel,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(55)),
                            borderSide:
                                BorderSide(color: Colors.purple, width: 3.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          hintText: SignUpSurnameSurname,
                        ),
                      ),
                      //***************************SOYAD
                      const SizedBox(height: padding16),
                      const TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: SignUpEmailLabel,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(55)),
                            borderSide:
                                BorderSide(color: Colors.purple, width: 3.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          hintText: SignUpEmailHint,
                        ),
                      ),
                      //************** E-MAİL
                      const SizedBox(height: padding16),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: SignUpSifreLabel,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(55)),
                            borderSide:
                                BorderSide(color: Colors.purple, width: 3.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                          ),
                          hintText: SignUpSifreHint,
                        ),
                      ),
                      //**************** SIFRE
                      const SizedBox(height: padding16),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_reset_outlined),
                          labelText: SignUpSifreTekrarLabel,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(55)),
                            borderSide:
                                BorderSide(color: Colors.purple, width: 3.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                          ),
                          hintText: SignUpSifreTekrarHint,
                        ),
                      ),
                      //**************** SIFRE Tekrar
                      const SizedBox(height: padding16),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: const Text(signUp),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
