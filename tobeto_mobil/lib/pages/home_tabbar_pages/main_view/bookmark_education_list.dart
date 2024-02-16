import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_event.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_state.dart';
import 'package:tobeto_mobil/constants/text_list.dart';
import 'package:tobeto_mobil/core/widgets/error_snackbar_widget.dart';
import 'package:tobeto_mobil/pages/home_tabbar_pages/main_view/widgets/main_page_content.dart';

class BookmarkEducationList extends StatelessWidget {
  const BookmarkEducationList({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationBloc, EducationState>(builder: (context, state) {
      if (state is EducationStateInitial) {
        context.watch<EducationBloc>().add(const EducationEventFetch());
        return const CircularProgressIndicator();
      } else if (state is EducationStateLoading) {
        return const CircularProgressIndicator();
      } else if (state is EducationStateLoaded) {
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
      } else if (state is EducationStateError) {
        return ErrorSnackBar(errorMessage: state.errorMessage);
      } else {
        return const ErrorSnackBar(errorMessage: errorMessage);
      }
    });
  }
}
