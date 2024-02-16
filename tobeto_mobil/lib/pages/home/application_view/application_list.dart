import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/application_bloc/application_bloc.dart';
import 'package:tobeto_mobil/api/bloc/application_bloc/application_event.dart';
import 'package:tobeto_mobil/api/bloc/application_bloc/application_state.dart';
import 'package:tobeto_mobil/pages/home/application_view/application_card.dart';

class ApplicationList extends StatelessWidget {
  const ApplicationList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationBloc, ApplicationState>(
      builder: (context, state) {
        if (state is ApplicationStateInitial) {
          context.read<ApplicationBloc>().add(const ApplicationEventFetch());
        }
        if (state is ApplicationStateLoaded) {
          return ListView.builder(
            itemCount: state.applications.length,
            itemBuilder: (context, index) {
              return ApplicationCard(application: state.applications[index]);
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
