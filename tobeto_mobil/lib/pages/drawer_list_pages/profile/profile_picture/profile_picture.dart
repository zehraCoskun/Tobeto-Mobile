//profil resmi
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/models/user_model.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/profile_picture/animated_wave_curves.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({
    super.key,
    this.height,
    required this.user,
  });
  final double? height;
  final UserModel user;

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const AnimatedWaveCurves(),
          Container(
            width: 120,
            height: 120,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(2, 2),
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                widget.user.userPicture != null ? widget.user.userPicture! : ders2,
                height: 120,
                width: 120,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
