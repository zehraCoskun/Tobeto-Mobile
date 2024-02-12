import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_event.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_state.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/catalog/catalog_category/catalog_card.dart';

class CatalogBody extends StatelessWidget {
  const CatalogBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationBloc, EducationState>(builder: (context, state) {
      if (state is EducationStateInitial) {
        context.watch<EducationBloc>().add(const EducationEventFetch());
        return const CircularProgressIndicator();
      } else if (state is EducationStateLoading) {
        return const CircularProgressIndicator();
      } else if (state is EducationStateLoaded) {
        return Expanded(
          flex: 15,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              childAspectRatio: 3 / 2,
            ),
            itemCount: state.educations.length,
            itemBuilder: (context, index) {
              return InkWell(
                child: CatalogCard(catalog: state.educations[index]),
                onTap: () {
                  //Navigator.of(context).pushNamed("/detail", arguments: catalogList[index]);
                  //TODO: detay sayfası yapmadık hiç :(((
                },
              );
            },
          ),
        );
      } else if (state is EducationStateError) {
        return Center(
          child: Text(
            state.errorMessage,
            style: TextStyle(color: Colors.red),
          ),
        );
      } else {
        return Center(
          child: Text(
            state.toString(),
            style: TextStyle(color: Colors.red),
          ),
        );
      }
    });
  }
}
