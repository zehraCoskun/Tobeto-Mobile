import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc/announcement_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc/announcement_event.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc/announcement_state.dart';
import 'package:tobeto_mobil/constants/text_list.dart';
import 'package:tobeto_mobil/core/widgets/error_snackbar_widget.dart';
import 'package:tobeto_mobil/pages/home_tabbar_pages/announcement_view/announcement_card.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class AnnouncementList extends StatelessWidget {
  const AnnouncementList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnnouncementBloc, AnnouncementState>(builder: (context, state) {
      if (state is AnnouncementStateInitial) {
        context.watch<AnnouncementBloc>().add(const AnnouncementEventFetch());
        return const CircularProgressIndicator();
      } else if (state is AnnouncementStateLoading) {
        return const CircularProgressIndicator();
      } else if (state is AnnouncementStateLoaded) {
        state.announcements.sort((a, b) => b.date.compareTo(a.date));
        return ListView.builder(
          itemCount: state.announcements.length,
          itemBuilder: (context, index) {
            return AnnouncementCard(
              announcement: state.announcements[index],
            );
          },
        );
      } else if (state is AnnouncementStateError) {
        return ErrorSnackBar(
          errorMessage: state.errorMessage,
        );
      } else {
        return const ErrorSnackBar(
          errorMessage: errorMessage,
        );
      }
    });
  }
}
