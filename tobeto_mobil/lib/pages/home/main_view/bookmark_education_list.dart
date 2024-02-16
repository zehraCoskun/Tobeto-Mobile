import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_event.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_state.dart';
import 'package:tobeto_mobil/pages/home/main_view/widgets/main_page_content.dart';

class BookmarkEducationList extends StatelessWidget {
  const BookmarkEducationList({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationBloc, EducationState>(
      builder: (context, state) {
        if (state is EducationStateInitial) {
          context.read<EducationBloc>().add(const EducationEventFetch());
        }
        if (state is EducationStateLoaded) {
          return AspectRatio(
            aspectRatio: 2.5 / 1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.educations.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 300,
                  child: MainPageContent(
                    icon: icon,
                    education: state.educations[index],
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
