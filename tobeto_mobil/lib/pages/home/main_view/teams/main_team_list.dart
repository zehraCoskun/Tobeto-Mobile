import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/team_bloc/team_bloc.dart';
import 'package:tobeto_mobil/api/bloc/team_bloc/team_event.dart';
import 'package:tobeto_mobil/api/bloc/team_bloc/team_state.dart';
import 'package:tobeto_mobil/pages/home/main_view/teams/main_team_card.dart';

class MainTeamList extends StatelessWidget {
  const MainTeamList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamBloc, TeamState>(
      builder: (context, state) {
        if (state is TeamStateInitial) {
          context.read<TeamBloc>().add(const TeamEventFetch());
        }
        if (state is TeamStateLoaded) {
          return AspectRatio(
            aspectRatio: 1.5 / 1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.teams.length,
              itemBuilder: (context, index) {
                return SizedBox(width: 180, child: MainTeamCard(teamModel: state.teams[index]));
              },
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
