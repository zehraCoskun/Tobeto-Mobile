import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_bloc.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_event.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_state.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/core/widgets/background/secondary_background.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_body.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_category/catalog_search_bar.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_filter/catalog_filter_option/catalog_filter_option_body.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_filter/catalog_order_filter.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  bool _isKeyboardVisible = false;
  late KeyboardVisibilityController controller;

  _CatalogPageState();
  @override
  void initState() {
    super.initState();
    controller = KeyboardVisibilityController();
  }

  @override
  Widget build(BuildContext context) {
    controller.onChange.listen((onData) {
      setState(() {
        _isKeyboardVisible = onData;
      });
    });

    return GlobalScaffold(
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
