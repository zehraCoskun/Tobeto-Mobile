import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_bloc.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_event.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_state.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/core/widgets/background/secondary_background.dart';
import 'package:tobeto_mobil/models/catalog/sort_by.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_body.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_category/catalog_search_bar.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_filter/catalog_filter_option/catalog_filter_option_body.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_filter/catalog_order_filter.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  bool _isKeyboardVisible = false;
  String _searchQuery = "";

  _CatalogPageState();
  @override
  void initState() {
    super.initState();
    KeyboardVisibilityController().onChange.listen((bool visible) {
      setState(() {
        _isKeyboardVisible = visible;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: AppBar(
        title: CatalogSearchBar(
          onChanged: (value) {
            setState(() {
              _searchQuery = value;
            });
          },
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
              if (!_isKeyboardVisible) const CatalogOrderAndFilter(),
              const SizedBox(height: 5),
              if (!_isKeyboardVisible) const CatalogFilterOptionWidget(),
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
