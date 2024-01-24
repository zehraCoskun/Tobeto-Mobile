//sosyal medyalarım içeriği
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/enums/social_media_item.dart';
import 'package:tobeto_mobil/models/user_model.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/social_media_button.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    super.key,
    required this.user,
    required this.socialMediaItems,
  });
  final UserModel user;

  final List<SocialMediaItem> socialMediaItems;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        itemCount: socialMediaItems.length,
        itemBuilder: (context, index) {
          return SocialMediaButton(
            logo: socialMediaItems[index].getIcon(),
            url: socialMediaItems[index].getUrl(),
            color: socialMediaItems[index].getColor(),
          );
        },
      ),
    );
  }
}
