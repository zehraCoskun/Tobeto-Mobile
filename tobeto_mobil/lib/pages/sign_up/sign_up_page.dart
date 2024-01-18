import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/pages/login_text.dart';
import 'package:tobeto_mobil/constants/sizes.dart';
import 'package:tobeto_mobil/core/widgets/primary_background.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passwordVisible = false;
  bool passwordVisible2 = false;
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
      body: PrimaryBackgroundWidget(
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
                      //AD************************************AD
                      TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: SignUpNameLabel,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(55)),
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.onPrimary,
                                width: 3.0), // colorscheme
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          hintText: SignUpNameHint,
                        ),
                      ),
                      //**************************SOYAD
                      SizedBox(height: padding16),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: SignUpSurnameLabel,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(55)),
                            borderSide: BorderSide(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary, // colorscheme111********
                                width: 3.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 2.0), // ColorScheme22
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          hintText: SignUpSurnameSurname,
                        ),
                      ),
                      //***************************E-MAİL
                      const SizedBox(height: padding16),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: SignUpEmailLabel,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(55)),
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.onPrimary,
                                width: 3.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          hintText: SignUpEmailHint,
                        ),
                      ),
                      //******************* ŞİFRE
                      const SizedBox(height: padding16),
                      TextField(
                        obscureText: !passwordVisible,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                            icon: Icon(passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimary, // Buradaaa icon renk almadı neden????
                          ),
                          labelText: SignUpSifreLabel,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(55)),
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.onPrimary,
                                width: 3.0), //ColorScheme***
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 2.0),
                          ),
                          hintText: SignUpSifreHint,
                        ),
                      ),
                      //************************* SIFRE TEKRAR
                      const SizedBox(height: padding16),
                      TextField(
                        obscureText: !passwordVisible2,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_reset_outlined),
                          suffixIcon: IconButton(
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimary, // Buradaaa icon renk almadı neden????
                            onPressed: () {
                              setState(() {
                                passwordVisible2 = !passwordVisible2;
                              });
                            },
                            icon: Icon(passwordVisible2
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          labelText: SignUpSifreTekrarLabel,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(55)),
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.onPrimary,
                                width: 3.0), // ColorScheme***
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 2.0),
                          ),
                          hintText: SignUpSifreTekrarHint,
                        ),
                      ),
                      //**************************************
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
