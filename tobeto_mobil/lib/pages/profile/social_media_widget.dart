//sosyal medyalarım içeriği
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/profile_text.dart';
import 'package:tobeto_mobil/models/user_model.dart';
import 'package:tobeto_mobil/pages/profile/social_media_button.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    super.key,
    required this.user,
  });
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SocialMediaButton(
          logo: github,
          color: githubColor,
          url: user.githubLink ?? "", 
        ),
        SocialMediaButton(
          logo: linkedin,
          color: linkedinColor,
          url: user.linkedinLink ?? "", //boş döndürmek yerine tobetonun sayfaları konabilir
        ),
        SocialMediaButton(
          logo: facebook,
          color: facebookColor,
          url: user.facebookLink ?? "",
        ),
        SocialMediaButton(
          logo: twitterX,
          color: twitterXColor,
          url: user.twitterLink ?? "",
        ),
        SocialMediaButton(
          logo: instagram,
          color: instagramColor,
          url: user.instagramLink ?? "",
        ),
      ],
    );
  }
}
