import 'package:flutter/material.dart';
import 'package:tobeto_mobil/colors/tobeto_colors.dart';
import 'package:tobeto_mobil/consts/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/tobetoBackground.png"),
            fit: BoxFit.cover,
            //colorFilter: ColorFilter.linearToSrgbGamma(),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: const AssetImage("assets/images/tobeto-logo.png"),
              height: size.height * 0.1,
            ),
            const FormWidget(
              prefixIcon: Icon(Icons.person),
              labelText: loginUsernameLabel,
              hintText: loginUsernameHint,
              isPassword: false,
            ),
            const SizedBox(height: 16),
            FormWidget(
              prefixIcon: const Icon(Icons.password),
              labelText: loginPasswordLabel,
              hintText: loginPasswordHint,
              suffixIcon: IconButton(
                icon: const Icon(Icons.remove_red_eye_sharp),
                onPressed: () {},
              ),
              isPassword: true,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(loginForgotText),
                    style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(MyColors.mainTextColor))),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 40), textStyle: TextStyle(fontSize: 20)),
                  child: const Text(loginButtonText),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FormWidget extends StatelessWidget {
  const FormWidget({
    super.key,
    required this.prefixIcon,
    required this.labelText,
    required this.hintText,
    this.suffixIcon,
    required this.isPassword,
  });

  final Icon prefixIcon;
  final String labelText;
  final String hintText;
  final Widget? suffixIcon;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.secondaryColor,
      child: TextField(
        decoration: InputDecoration(
          prefixIconColor: Theme.of(context).primaryColor,
          prefixIcon: prefixIcon,
          labelText: labelText, //placeholder
          hintText: hintText,
          border: const OutlineInputBorder(),
          suffixIconColor: MyColors.mainTextColor,
          suffixIcon: suffixIcon,
        ),
        obscureText: isPassword,
      ),
    );
  }
}
