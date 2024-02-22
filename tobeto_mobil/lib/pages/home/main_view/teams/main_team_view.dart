import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/team_bloc/team_bloc.dart';
import 'package:tobeto_mobil/api/bloc/team_bloc/team_event.dart';
import 'package:tobeto_mobil/api/bloc/team_bloc/team_state.dart';
import 'package:tobeto_mobil/pages/home/main_view/teams/main_team_card.dart';

class MainTeamList extends StatefulWidget {
  const MainTeamList({
    Key? key,
  }) : super(key: key);

  @override
  State<MainTeamList> createState() => _MainTeamListState();
}

class _MainTeamListState extends State<MainTeamList> {
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startAutoScroll();
    });
  }

  void _startAutoScroll() {
    Future.delayed(const Duration(seconds: 8), () {
      if (context.mounted) {
        _controller
            .animateTo(
          _controller.position.maxScrollExtent,
          duration: const Duration(seconds: 8),
          curve: Curves.linear,
        )
            .then((_) {
          _controller.animateTo(
            0,
            duration: const Duration(seconds: 4),
            curve: Curves.linear,
          );
          _startAutoScroll();
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamBloc, TeamState>(
      builder: (context, state) {
        if (state is TeamStateInitial) {
          context.read<TeamBloc>().add(const TeamEventFetch());
        }
        if (state is TeamStateLoaded) {
          state.teams.sort((a, b) => a.sortNumber.compareTo(b.sortNumber));
          return AspectRatio(
            aspectRatio: 1.65 / 1,
            child: ListView.builder(
              controller: _controller,
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
