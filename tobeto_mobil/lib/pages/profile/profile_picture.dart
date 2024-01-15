//profil resmi
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: Image.asset(
          ders1,
          height: 120,
          width: 120,
        ),
      ),
    );
  }
}