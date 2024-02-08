import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/profile_picture/animated_wave_curves.dart';
import 'package:tobeto_mobil/core/widgets/basic_shadow.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({
    super.key,
    this.height,
    this.userImage,
  });
  final double? height;
  final String? userImage;

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
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [basicShadow()],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: widget.userImage != null
                  ? Image.network(
                      widget.userImage ?? "",
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(ders2),
            ),
          ),
        ],
      ),
    );
  }
}
