import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_event.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_state.dart';
import 'package:tobeto_mobil/core/widgets/background/secondary_background.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_card.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_category/education_category_item.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.category});
  final EducationCategoryItem category;
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
            title: Text(
          category.toTitle(),
          style: Theme.of(context).textTheme.titleLarge,
        )),
        body: SecondaryBackgroundWidget(
          child: BlocBuilder<EducationBloc, EducationState>(
            builder: (context, state) {
              if (state is EducationStateInitial) {
                context.read<EducationBloc>().add(const EducationEventFetch());
                return const CircularProgressIndicator();
              } else if (state is EducationStateLoading) {
                return const CircularProgressIndicator();
              } else if (state is EducationStateLoaded) {
                final educations = state.educations.where((education) => education.category.name == category.toString()).toList();
                return SizedBox(
                  height: size,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: educations.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: EducationCard(
                          education: educations[index],
                        ),
                      );
                    },
                  ),
                );
              }
              return Container();
            },
          ),
        ));
  }
}
