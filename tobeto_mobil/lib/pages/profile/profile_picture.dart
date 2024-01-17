//profil resmi
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/pages/profile/profile_edit_page/animated_wave_curves.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: MediaQuery.of(context).size.width - 10,
      child: Stack(
        alignment: Alignment.center,
        children: [
          MyAnimatedWaveCurves(),
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.asset(
              ders1,
              height: 120,
              width: 120,
            ),
          ),
        ],
      ),
    );
  }
}
