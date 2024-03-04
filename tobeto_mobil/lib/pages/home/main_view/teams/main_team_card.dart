import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/custom_image_network.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/models/team_model.dart';

class MainTeamCard extends StatelessWidget {
  const MainTeamCard({
    super.key,
    required this.teamModel,
  });
  
  final TeamModel teamModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).appBarTheme.backgroundColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(),
        boxShadow: [
          containerBasicShadow(),
          purpleShadow(),
          containerBasicShadow(),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: CustomImageNetwork(
              url: teamModel.imageUrl,
            ),
          ),
          Text(
            teamModel.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 14,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
