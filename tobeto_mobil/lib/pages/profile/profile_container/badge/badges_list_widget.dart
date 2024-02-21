//rozetlerim
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/firebase_models/user/badge_model.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/badge/badge_widget.dart';

class BadgesListWidget extends StatelessWidget {
  const BadgesListWidget({
    super.key,
    this.badges,
  });
  final List<BadgeModel>? badges;

  @override
  Widget build(BuildContext context) {
    return badges == null || badges!.isEmpty
        ? const SizedBox()
        : AspectRatio(
            aspectRatio: 2 / 1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: badges?.length ?? 0,
              itemBuilder: (context, index) {
                return BadgeWidget(
                  badge: badges![index],
                );
              },
            ),
          );
  }
}
