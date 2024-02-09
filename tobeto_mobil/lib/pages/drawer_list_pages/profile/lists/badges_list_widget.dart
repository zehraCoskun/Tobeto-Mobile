//rozetlerim
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/lists/badge_widget.dart';

class BadgesListWidget extends StatelessWidget {
  const BadgesListWidget({
    super.key, this.badges,
  });
  final List<String>? badges;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: badges != null ? badges!.length : 0,
        itemBuilder: (context, index) {
          return BadgeWidget(
            badge: badges != null ? badges![index] : "",
          );
        },
      ),
    );
  }
}
