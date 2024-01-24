import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/application/applications_bloc/applications_bloc.dart';
import 'package:tobeto_mobil/api/bloc/application/applications_bloc/applications_event.dart';
import 'package:tobeto_mobil/api/bloc/application/applications_bloc/applications_state.dart';
import 'package:tobeto_mobil/pages/home_tabbar_pages/application_view.dart/application_card.dart';

class ApplicationList extends StatelessWidget {
  const ApplicationList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationsBloc, ApplicationsState>(
      builder: (context, state) {
        if (state is ApplicationsInitial) {
          context.read<ApplicationsBloc>().add(GetAllApplications());
        }

        if (state is ApplicationsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is ApplicationsError) {
          return const Center(
            child: Text("Hata!"),
          );
        }

        if (state is ApplicationsLoaded) {
          final applications = state.applicationModels;
          return ListView.builder(
            itemCount: applications.length,
            itemBuilder: (context, index) {
              return ApplicationCard(application: applications[index]);
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
