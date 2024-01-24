import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/login_text.dart';
import 'package:tobeto_mobil/utils/responsive/responsive_layout.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key,
    required this.nameController,
    required this.surnameController,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController surnameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktopBody: buildDesktopSignUpForm(),
      mobileBody: buildMobileSignUpForm(),
      tabletBody: buildDesktopSignUpForm(),
    );
  }

  Widget buildDesktopSignUpForm() {
    return Center(
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: buildMobileSignUpForm(),
      ),
    );
  }

  Widget buildMobileSignUpForm() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 16),
          TextField(
            obscureText: false,
            decoration: InputDecoration(
              labelText: SignUpNameLabel,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pinkAccent, width: 3.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1.0),
              ),
              hintText: SignUpNameHint,
            ),
          ),
//**************************
          SizedBox(height: 16),
          TextField(
            obscureText: false,
            decoration: InputDecoration(
              labelText: SignUpSurnameLabel,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pinkAccent, width: 3.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1.0),
              ),
              hintText: SignUpSurnameSurname,
            ),
          ),
          //*************************** */
          SizedBox(height: 16),
          TextField(
            obscureText: false,
            decoration: InputDecoration(
              labelText: SignUpEmailLabel,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pinkAccent, width: 3.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1.0),
              ),
              hintText: SignUpEmailHint,
            ),
          ),
//********** */
          SizedBox(height: 16),
          TextField(
            obscureText: false,
            decoration: InputDecoration(
              labelText: SignUpSifreLabel,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pinkAccent, width: 3.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1.0),
              ),
              hintText: SignUpSifreHint,
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

/*class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
    required this.prefixIcon,
    required this.labelText,
    this.hintText,
    this.suffixIcon,
    this.isPassword,
    this.controller,
  });

  final Icon prefixIcon;
  final String labelText;

  //controller disaridan alicaz icerisine yazdigimiz degerleri yonetebilmek icin
  final TextEditingController? controller;

  //hintText optional yaptim iceride bazen hint vermek istemeyebiliriz diye dusundum daha sonra bakariz
  final String? hintText;
  final Widget? suffixIcon;

  //bunu optional yaptim gereksiz yer kaplamasina gerek yok her formWidget cagirdigimizda
  //bize isPassword vermesse false olarak ayarliyorum asagida zaten
  final bool? isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIconColor: Theme.of(context).inputDecorationTheme.prefixIconColor,
        prefixIcon: prefixIcon,
        labelText: labelText, //placeholder
        hintText: hintText,
        suffixIconColor: Theme.of(context).inputDecorationTheme.suffixIconColor,
        suffixIcon: suffixIcon,
        enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
        focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
      ),

      //isPassword null degilse ObscureText = isPassword
      //isPassword null ise ObscureText = false
      obscureText: isPassword ?? false,
    );
  }
}*/
