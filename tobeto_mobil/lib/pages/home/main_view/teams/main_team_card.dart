import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/models/firebase_models/team_model.dart';

class MainTeamCard extends StatelessWidget {
  const MainTeamCard({super.key, required this.teamModel});
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [containerBasicShadow(), purpleShadow()],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.network(teamModel.imageUrl),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              teamModel.name,
              softWrap: true,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 15,
                  ),
            ),
          ),
          Text(
            teamModel.title,
            softWrap: true,
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
