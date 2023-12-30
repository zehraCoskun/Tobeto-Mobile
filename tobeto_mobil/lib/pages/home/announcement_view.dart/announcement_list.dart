import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement/announcements_bloc/announcements_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement/announcements_bloc/announcements_event.dart';
import 'package:tobeto_mobil/api/bloc/announcement/announcements_bloc/announcements_state.dart';
import 'package:tobeto_mobil/pages/home/announcement_view.dart/announcement_card.dart';

class AnnouncementList extends StatelessWidget {
  const AnnouncementList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnnouncementsBloc, AnnouncementsState>(
      builder: (context, state) {
        if (state is AnnouncementsInitial) {
          context.read<AnnouncementsBloc>().add(GetAllAnnouncements());
        }

        if (state is AnnouncementsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is AnnouncementsError) {
          return const Center(
            child: Text("Hata!"),
          );
        }

        if (state is AnnouncementsLoaded) {
          final announcements = state.announcementModels;
          return ListView.builder(
            itemCount: announcements.length,
            itemBuilder: (context, index) {
              return AnnouncementCard(
                announcement: announcements[index],
              );
            },
          );
        }

        return const Center(
          child: Text("No Data!"),
        );
      },
    );
  }
}
