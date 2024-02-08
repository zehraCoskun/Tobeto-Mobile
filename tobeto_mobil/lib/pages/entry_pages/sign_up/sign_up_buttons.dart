import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/login_text.dart';
import 'package:tobeto_mobil/pages/entry_pages/login/login_page.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

// ignore: must_be_immutable
class SignUpButton extends StatelessWidget {
  SignUpButton({super.key});

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
  var _password = '';
  var _passwordAgain = '';

  @override
  Widget build(BuildContext context) {
    // Button' DİĞER SAYFADA çağırdığımda button gözüküyor ancak snackbar ve hata uyarılarını vermiyor?
    return Center(
      child: ElevatedButton(
        onPressed: () {
          print(_password);
          print(_passwordAgain);

          final result = _formKey.currentState!.validate();
          if (result) {
            _formKey.currentState?.save();
            print(_password);
            print(_passwordAgain);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        child: const Text(signUp),
        style: ElevatedButton.styleFrom(
            elevation: 20,
            shadowColor: Colors.blueGrey // Gölge miktarı, ayarlayabilirsiniz
            ),
      ),
    );
  }
}
//              ***TEXTBUTTON***

class SignUpTextButton extends StatelessWidget {
  const SignUpTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginPage()));
        },
        child: const Text("Giriş Yap"));
  }
}
