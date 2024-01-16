//rozetlerim
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/profile_text.dart';
import 'package:tobeto_mobil/pages/profile/badge_widget.dart';

class BadgesRowWidget extends StatelessWidget {
  const BadgesRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BadgeWidget(badge: badge1),
        BadgeWidget(badge: badge2),
        BadgeWidget(badge: badge3),
        BadgeWidget(badge: badge4),
        BadgeWidget(badge: badge5),
        BadgeWidget(badge: badge6),
        BadgeWidget(badge: badge7),
        BadgeWidget(badge: badge8),
      ],
    );
  }
}

