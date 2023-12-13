import 'package:flutter/material.dart';
import 'package:tobeto_mobil/colors/tobeto_colors.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    super.key,
    required this.prefixIcon,
    required this.labelText,
    this.hintText,
    this.suffixIcon,
    this.isPassword,
  });

  final Icon prefixIcon;
  final String labelText;

  //hintText optional yaptim iceride bazen hint vermek istemeyebiliriz diye dusundum daha sonra bakariz
  final String? hintText;
  final Widget? suffixIcon;

  //bunu optional yaptim gereksiz yer kaplamasina gerek yok her formWidget cagirdigimizda
  //bize isPassword vermesse false olarak ayarliyorum asagida zaten
  final bool? isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        //burayi degismemiz gerekebilir Theme.of kullanmiyoruz program genelinde MyColors ile halletmemiz lazim
        prefixIconColor: Theme.of(context).primaryColor,
        prefixIcon: prefixIcon,
        labelText: labelText, //placeholder
        hintText: hintText,
        suffixIconColor: MyColors.mainTextColor,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),

      //isPassword null degilse ObscureText = isPassword
      //isPassword null ise ObscureText = false
      obscureText: isPassword ?? false,
    );
  }
}
