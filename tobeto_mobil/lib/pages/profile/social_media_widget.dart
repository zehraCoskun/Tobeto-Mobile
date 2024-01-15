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
          url: "https://github.com/zehraCoskun/tobeto-mobile",
        ),
        SocialMediaButton(
          logo: linkedin,
          url: "https://www.linkedin.com/in/zehracoskun/",
        ),
        SocialMediaButton(
          logo: facebook,
          url: "https://www.facebook.com/",
        ),
        SocialMediaButton(
          logo: twitter,
          url: "https://twitter.com/home",
        ),
        SocialMediaButton(
          logo: instagram,
          url: "https://www.instagram.com",
        ),
      ],
    );
  }
}

