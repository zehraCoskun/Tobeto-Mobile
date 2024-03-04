import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc/announcement_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc/announcement_event.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc/announcement_state.dart';
import 'package:tobeto_mobil/pages/home/announcement_view/announcement_card.dart';

class AnnouncementView extends StatelessWidget {
  const AnnouncementView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnnouncementBloc, AnnouncementState>(
      builder: (context, state) {
        if (state is AnnouncementStateInitial) {
          context.read<AnnouncementBloc>().add(const AnnouncementEventFetch());
        }
        if (state is AnnouncementStateLoaded) {
          return ListView.builder(
            itemCount: state.announcements.length,
            itemBuilder: (context, index) {
              return AnnouncementCard(
                announcement: state.announcements[index],
              );
            },
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
