import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/survey/surveys_bloc/surveys_bloc.dart';
import 'package:tobeto_mobil/api/bloc/survey/surveys_bloc/surveys_event.dart';
import 'package:tobeto_mobil/api/bloc/survey/surveys_bloc/surveys_state.dart';
import 'package:tobeto_mobil/pages/home/survey_view.dart/no_surveys_card.dart';
import 'package:tobeto_mobil/pages/home/survey_view.dart/survey_card.dart';

class SurveyList extends StatelessWidget {
  const SurveyList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SurveysBloc, SurveysState>(
      builder: (context, state) {
        if (state is SurveysInitial) {
          context.read<SurveysBloc>().add(GetAllSurveys());
        }

        if (state is SurveysLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is SurveysError) {
          return const Center(
            child: Text("Hata!"),
          );
        }

        if (state is SurveysLoaded) {
          final surveys = state.surveyModels;

          if (surveys.isEmpty) {
            return const NoSurveysCard();
          }
          return ListView.builder(
            itemCount: surveys.length,
            itemBuilder: (context, index) {
              return const SurveyCard();
            },
          );
        }

        return const Center(
          child: Text("Unknown"),
        );
      },
    );
  }
}
