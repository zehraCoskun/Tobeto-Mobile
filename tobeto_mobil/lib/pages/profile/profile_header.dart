import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/animation/animated_wave_curves.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    this.height,
    this.userImage,
  });
  final double? height;
  final String? userImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const AnimatedWaveCurves(),
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: userImage != null
                ? Image.network(
                    userImage!,
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  )
                : Image.asset(logo),
          ),
        ],
      ),
    );
  }
}
