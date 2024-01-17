import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:lottie/lottie.dart';
import 'package:tobeto_mobil/constants/pages/login_text.dart';
import 'package:tobeto_mobil/constants/sizes.dart';
import 'package:tobeto_mobil/core/widgets/primary_background.dart';
import 'package:tobeto_mobil/pages/sign_up/sign_up_page.dart';

class RecoveryPage extends StatefulWidget {
  const RecoveryPage({super.key});

  @override
  State<RecoveryPage> createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Image(
            image: AssetImage(logo),
            height: kToolbarHeight,
            width: kToolbarHeight * 2,
          ),
        ),
        body: PrimaryBackgroundWidget(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: (MediaQuery.of(context).size.width / 2),
                child: Lottie.network("https://lottie.host/e9be6368-9465-4b43-8fc4-02314f5ec942/sZlkgQnieS.json"),
              ),
              const Text(
                forgetPasswordTitle,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.only(top: 10, bottom: 30)),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: padding16),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 3.0),
                      borderRadius: BorderRadius.all(Radius.circular(55)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    hintText: "e-posta adresinizi giriniz",
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 30)),
              ElevatedButton(
                onPressed: () {},
                child: const Text(send),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(signUpText),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(), // signuppage sayfasına navigator eklendi.
                    ),
                  );
                },
                child: const Text(signUp),
              ),
            ],
          ),
        ));
  }
}
