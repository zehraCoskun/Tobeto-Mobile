import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_event.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_state.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_card.dart';

class EducationCategoryBody extends StatelessWidget {
  const EducationCategoryBody({
    Key? key,
    required this.educationCategory,
  }) : super(key: key);
  final String educationCategory;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;

    return BlocBuilder<EducationBloc, EducationState>(
      builder: (context, state) {
        if (state is EducationStateInitial) {
          context.watch<EducationBloc>().add(const EducationEventFetch());
          return const CircularProgressIndicator();
        } else if (state is EducationStateLoading) {
          return const CircularProgressIndicator();
        } else if (state is EducationStateLoaded) {
          final softEducations = state.educations
              .where((education) => education.category == educationCategory)
              .toList();
          return SizedBox(
            height: size * 0.4,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: softEducations.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: EducationCard(
                    education: softEducations[index],
                  ),
                );
              },
            ),
          );
        }
        return Container();
      },
    );
  }
}
