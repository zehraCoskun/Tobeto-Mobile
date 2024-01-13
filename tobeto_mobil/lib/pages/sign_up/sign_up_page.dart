import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/pages/login_text.dart';
import 'package:tobeto_mobil/constants/sizes.dart';
import 'package:tobeto_mobil/core/widgets/background_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                    children: const [
                      SizedBox(height: padding16),
                      TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: SignUpNameLabel,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.pinkAccent, width: 3.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                          ),
                          hintText: SignUpNameHint,
                        ),
                      ),
                      //**************************AD
                      SizedBox(height: padding16),
                      TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: SignUpSurnameLabel,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.pinkAccent, width: 3.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                          ),
                          hintText: SignUpSurnameSurname,
                        ),
                      ),
                      //***************************SOYAD
                      SizedBox(height: padding16),
                      TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: SignUpEmailLabel,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.pinkAccent, width: 3.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                          ),
                          hintText: SignUpEmailHint,
                        ),
                      ),
                      //************** E-MAİL
                      SizedBox(height: padding16),
                      TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: SignUpSifreLabel,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.pinkAccent, width: 3.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                          ),
                          hintText: SignUpSifreHint,
                        ),
                      ),
                      //**************** SIFRE
                      SizedBox(height: padding16),
                      TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_reset_outlined),
                          labelText: SignUpSifreTekrarLabel,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.pinkAccent, width: 3.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                          ),
                          hintText: SignUpSifreTekrarHint,
                        ),
                      ),
                      //**************** SIFRE Tekrar
                      SizedBox(height: padding16),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(signUp),
              )
            ],
          ),
        ),
      ),
    );
  }
}
