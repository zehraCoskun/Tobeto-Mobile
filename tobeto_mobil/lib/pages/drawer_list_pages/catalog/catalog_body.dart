import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_bloc.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_event.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_state.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/catalog/catalog_category/catalog_card.dart';

class CatalogBody extends StatelessWidget {
  const CatalogBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
      if (state is CatalogStateInitial) {
        context.read<CatalogBloc>().add(const CatalogEventFetch());
        return const CircularProgressIndicator();
      } else if (state is CatalogStateLoading) {
        return const CircularProgressIndicator();
      } else if (state is CatalogStateLoaded) {
        return Expanded(
          flex: 15,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              childAspectRatio: 3 / 2,
            ),
            itemCount: state.catalogs.length,
            itemBuilder: (context, index) {
              return InkWell(
                child: CatalogCard(catalog: state.catalogs[index]),
                onTap: () {
                  //Navigator.of(context).pushNamed("/detail", arguments: catalogList[index]);
                  //TODO: detay sayfası yapmadık hiç :(((
                },
              );
            },
          ),
        );
      } else if (state is CatalogStateError) {
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
