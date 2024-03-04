import 'package:carousel_slider/carousel_slider.dart';
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
          return CarouselSlider(
            items: [
              ...state.teams.map((item) {
                return MainTeamCard(
                  teamModel: item,
                );
              })
            ],
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              viewportFraction: 0.33,
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
