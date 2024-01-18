//rozetlerim
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/profile_text.dart';
import 'package:tobeto_mobil/pages/profile/badge_widget.dart';

class BadgesListWidget extends StatelessWidget {
  const BadgesListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: badges.length,
        itemBuilder: (context, index) {
          return BadgeWidget(
            badge: badges[index],
          );
        },
      ),
    );
  }
}

final List<String> badges = [badge1, badge2, badge3, badge4, badge5, badge6, badge7, badge8];
