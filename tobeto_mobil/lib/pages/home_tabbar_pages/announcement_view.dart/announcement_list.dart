import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc.dart/announcement_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc.dart/announcement_event.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc.dart/announcement_state.dart';
import 'package:tobeto_mobil/pages/home_tabbar_pages/announcement_view.dart/announcement_card.dart';

class AnnouncementList extends StatelessWidget {
  const AnnouncementList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<AnnouncementBloc>().add(const AnnouncementEventFetch());

    return BlocBuilder<AnnouncementBloc, AnnouncementState>(builder: (context, state) {
      if (state is AnnouncementStateLoading) {
        return const CircularProgressIndicator();
      } else if (state is AnnouncementStateLoaded) {
        return ListView.builder(
          itemCount: state.announcements.length,
          itemBuilder: (context, index) {
            return AnnouncementCard(
              announcement: state.announcements[index],
            );
          },
        );
      } else if (state is AnnouncementStateError) {
        return Center(
          child: Text(
            state.errorMessage,
            style: TextStyle(color: Colors.red),
          ),
        );
      } else {
        return Center(
          child: Text(
            state.toString(),
            style: TextStyle(color: Colors.red),
          ),
        );
      }
    });
  }
}
