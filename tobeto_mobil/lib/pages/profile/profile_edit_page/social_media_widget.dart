import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/enums/social_media_item.dart';
import 'package:tobeto_mobil/pages/profile/profile_edit_page/profile_text_field.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    super.key,
    required this.socialMediaItems,
  });

  final List<SocialMediaItem> socialMediaItems;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1.3,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: socialMediaItems.length,
        itemBuilder: (context, index) {
          return OptionalProfileTextField(
            labelText: socialMediaItems[index].getName(),
            icon: Image.asset(socialMediaItems[index].getIcon(), height: 32, width: 32),
          );
        },
      ),
    );
  }
}
