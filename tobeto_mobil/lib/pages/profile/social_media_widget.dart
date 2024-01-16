//sosyal medyalarım içeriği
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/pages/profile/social_media_button.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SocialMediaButton(
          logo: github,
          color: githubColor,
          url: githubUrl,
        ),
        SocialMediaButton(
          logo: linkedin,
          color: linkedinColor,
          url: linkedinUrl,
        ),
        SocialMediaButton(
          logo: facebook,
          color: facebookColor,
          url: facebookUrl,
        ),
        SocialMediaButton(
          logo: twitterX,
          color: twitterXColor,
          url: twitterUrl,
        ),
        SocialMediaButton(
          logo: instagram,
          color: instagramColor,
          url: instagramUrl,
        ),
      ],
    );
  }
}
