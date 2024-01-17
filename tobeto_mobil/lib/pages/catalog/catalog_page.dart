import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/core/widgets/primary_background.dart';
import 'package:tobeto_mobil/core/widgets/secondary_background.dart';
import 'package:tobeto_mobil/dummy_data.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_body.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_category/catalog_header.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_filter/catalog_filter_body.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_filter/catalog_filter_header.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: AppBar(
        title: const CatalogHeader(),
        toolbarHeight: 80,
      ),
      body: SecondaryBackgroundWidget(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 8),
            const CatalogFilterHeader(),
            const SizedBox(height: 5),
            const CatalogFilterBody(),
            CatalogBody(catelogModels: catalogModelData),
          ],
        ),
      ),
    );
  }
}
