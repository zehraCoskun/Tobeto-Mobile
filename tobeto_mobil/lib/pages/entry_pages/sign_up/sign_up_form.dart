import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/login_text.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

bool passwordVisible = false;
bool passwordVisible2 = false;

//****************/

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

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
              borderRadius: const BorderRadius.all(Radius.circular(55)),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 3.0), // colorscheme
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 2.0),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
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
              borderRadius: const BorderRadius.all(Radius.circular(55)),
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
              borderRadius: const BorderRadius.all(Radius.circular(15)),
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
              borderRadius: const BorderRadius.all(Radius.circular(55)),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.onPrimary, width: 3.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 2.0),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
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
              icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off),
              color: Theme.of(context)
                  .colorScheme
                  .onPrimary, // Buradaaa icon renk almadı neden????
            ),
            labelText: SignUpSifreLabel,
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(55)),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 3.0), //ColorScheme***
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 2.0),
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
              icon: Icon(
                  passwordVisible2 ? Icons.visibility : Icons.visibility_off),
            ),
            labelText: SignUpSifreTekrarLabel,
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(55)),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 3.0), // ColorScheme***
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 2.0),
            ),
            hintText: SignUpSifreTekrarHint,
          ),
        ),
      ],
    );
  }
}
