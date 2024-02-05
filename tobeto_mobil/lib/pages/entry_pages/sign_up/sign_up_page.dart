import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_event.dart';
import 'package:tobeto_mobil/api/business/requests/auth_requests/auth_register_request.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/pages/login_text.dart';
import 'package:tobeto_mobil/core/widgets/primary_background.dart';
import 'package:tobeto_mobil/pages/entry_pages/login/login_page.dart';
import 'package:tobeto_mobil/pages/entry_pages/recovery/recovery_page.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passwordVisible = false;
  bool passwordVisible2 = false;

  //****************/
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

  void _submit() async {
    _formKey.currentState!.validate();
    _formKey.currentState!.save();
  }

  final _formKey = GlobalKey<FormState>();

  var _ad = '';
  var _soyad = '';
  var _email = '';
  var _password = '';
  var _passwordAgain = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PrimaryBackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                ],
              ),
              Image.asset(
                height: kToolbarHeight,
                Theme.of(context).brightness == Brightness.dark
                    ? ikLogoLight
                    : ikLogoDark,
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      //AD************************************AD
                      TextFormField(
                        onSaved: (newValue) {
                          _ad = newValue!;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Lütfen ad alanını boş bırakmayın";
                          }
                          return null;
                        }, // ad validator ************
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person),
                          labelText: SignUpNameLabel,
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(55)),
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.onPrimary,
                                width: 3.0), // colorscheme
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 2.0),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                          ),
                          hintText: SignUpNameHint,
                        ),
                      ),
                      //**************************SOYAD
                      const SizedBox(height: 16),
                      TextFormField(
                        onSaved: (newValue) {
                          _soyad = newValue!;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Lütfen Soyad alanını boş bırakmayın";
                          }
                          return null;
                        }, //  validator ************
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person),
                          labelText: SignUpSurnameLabel,
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(55)),
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
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                          ),
                          hintText: SignUpSurnameSurname,
                        ),
                      ),
                      //***************************E-MAİL
                      const SizedBox(height: 16),
                      TextFormField(
                        onSaved: (newValue) {
                          _email = newValue!;
                        },

                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Lütfen E-mail alanını boş bırakmayın";
                          }
                          if (!value.contains("@")) {
                            return "Mail geçersiz; Mail, @ içermelidir";
                          }
                          if (value.length < 10) {
                            return "Lütfen geçerli bir mail girin!";
                          }
                          return null; // Geçerli durum
                        },
                        // validator ************
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          labelText: SignUpEmailLabel,
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(55)),
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.onPrimary,
                                width: 3.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 2.0),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                          ),
                          hintText: SignUpEmailHint,
                        ),
                      ),
                      //******************* ŞİFRE
                      const SizedBox(height: 16),
                      TextFormField(
                        onChanged: (newValue) {
                          _password = newValue;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Lütfen Şifre alanını boş bırakmayın";
                          }
                          return null;
                        }, //  validator ************
                        obscureText: !passwordVisible,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
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
                            borderRadius:
                                const BorderRadius.all(Radius.circular(55)),
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.onPrimary,
                                width: 3.0), //ColorScheme***
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 2.0),
                          ),
                          hintText: SignUpSifreHint,
                        ),
                      ),
                      //************************* SIFRE TEKRAR
                      const SizedBox(height: 16),
                      TextFormField(
                        onChanged: (newValue) {
                          _passwordAgain = newValue;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Lütfen Şifre alanını boş bırakmayın";
                          }
                          if (_passwordAgain != _password) {
                            return "Şifreler uyuşmadı, Lütfen tekrar deneyin!";
                          }
                          return null;
                        }, //  validator ************
                        obscureText: !passwordVisible2,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock_reset_outlined),
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
                            borderRadius:
                                const BorderRadius.all(Radius.circular(55)),
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.onPrimary,
                                width: 3.0), // ColorScheme***
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 2.0),
                          ),
                          hintText: SignUpSifreTekrarHint,
                        ),
                      ),
                      //**************************************
                      const SizedBox(height: 25),
                      ElevatedButton(
                        onPressed: () {
                          print(_password);
                          print(_passwordAgain);

                          final result = _formKey.currentState!.validate();
                          if (result) {
                            _formKey.currentState?.save();
                            context.read<AuthBloc>().add(
                                  AuthEventRegister(
                                    request: AuthRegisterRequest(
                                      fullName: "$_ad $_soyad",
                                      email: _email,
                                      password: _password,
                                    ),
                                  ),
                                );
                            //if successfull go to login screen or homescreen

                            // ScaffoldMessenger.of(context)
                            //     .showSnackBar(snackBar);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 20,
                            shadowColor: Colors
                                .blueGrey // Gölge miktarı, ayarlayabilirsiniz
                            ),
                        child: const Text(signUp),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Text("Zaten bir hesabın var mı ?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          child: const Text("Giriş Yap"))
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
