import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_bloc.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_event.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_state.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/core/widgets/background/secondary_background.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_body.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_category/catalog_search_bar.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_filter/catalog_filter_option/catalog_filter_option_body.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_filter/catalog_order_filter.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: CatalogSearchBar(
          onChanged: (value) {},
        ),
        toolbarHeight: 80,
      ),
      body: SecondaryBackgroundWidget(child:
          BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
        if (state is CatalogStateInitial) {
          context.read<CatalogBloc>().add(const CatalogEventFetch());
          return const CircularProgressIndicator();
        } else if (state is CatalogStateLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is CatalogStateLoaded) {
          return Column(
            children: <Widget>[
              const SizedBox(height: 8),
              const CatalogOrderAndFilter(),
              const SizedBox(height: 5),
              const CatalogFilterOptionWidget(),
              CatalogBody(catalogs: state.catalogs),
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      })),
    );
  }
}
