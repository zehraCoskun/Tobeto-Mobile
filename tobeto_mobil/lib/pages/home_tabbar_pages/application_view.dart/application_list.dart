import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/application_bloc/application_bloc.dart';
import 'package:tobeto_mobil/api/bloc/application_bloc/application_event.dart';
import 'package:tobeto_mobil/api/bloc/application_bloc/application_state.dart';
import 'package:tobeto_mobil/constants/text_list.dart';
import 'package:tobeto_mobil/core/widgets/error_snackbar_widget.dart';
import 'package:tobeto_mobil/pages/home_tabbar_pages/application_view.dart/application_card.dart';

class ApplicationList extends StatelessWidget {
  const ApplicationList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationBloc, ApplicationState>(builder: (context, state) {
      if (state is ApplicationStateInitial) {
        context.watch<ApplicationBloc>().add(const ApplicationEventFetch());
        return const CircularProgressIndicator();
      } else if (state is ApplicationStateLoading) {
        return const CircularProgressIndicator();
      } else if (state is ApplicationStateLoaded) {
        return ListView.builder(
          itemCount: state.applications.length,
          itemBuilder: (context, index) {
            return ApplicationCard(application: state.applications[index]);
          },
        );
      } else if (state is ApplicationStateError) {
        return ErrorSnackBar(errorMessage: state.errorMessage);
      } else {
        return const ErrorSnackBar(errorMessage: errorMessage);
      }
    });
  }
}
