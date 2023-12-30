import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education/educations_bloc/educations_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education/educations_bloc/educations_event.dart';
import 'package:tobeto_mobil/api/bloc/education/educations_bloc/educations_state.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_card.dart';

class EducationCategoryBody extends StatelessWidget {
  const EducationCategoryBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;

    return SizedBox(
      height: size * 0.4,
      child: BlocBuilder<EducationsBloc, EducationsState>(
        builder: (context, state) {
          if (state is EducationsInitial) {
            context.read<EducationsBloc>().add(GetAllEducations());
          }

          if (state is EducationsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is EducationsError) {
            return const Center(
              child: Text("Error!"),
            );
          }

          if (state is EducationsLoaded) {
            final educations = state.educationModels;

            return ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: educations.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: EducationCard(
                    education: educations[index],
                  ),
                );
              },
            );
          }

          return const Center(
            child: Text("No Data!"),
          );
        },
      ),
    );
  }
}
