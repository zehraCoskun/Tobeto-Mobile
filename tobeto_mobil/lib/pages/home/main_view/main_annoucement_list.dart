import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc/announcement_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc/announcement_event.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc/announcement_state.dart';
import 'package:tobeto_mobil/pages/home/main_view/widgets/main_body_container.dart';

class MainAnnouncementList extends StatelessWidget {
  const MainAnnouncementList({
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
          state.announcements.sort((a, b) => b.date.compareTo(a.date));
          return AspectRatio(
            aspectRatio: 3.5 / 1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.announcements.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 300,
                  child: MainBodyContainer(
                    announcement: state.announcements[index],
                  ),
                );
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
