import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/catalog/catalog_model.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_category/catalog_card.dart';

class CatalogBody extends StatelessWidget {
  const CatalogBody({
    Key? key,
    required this.catalogs,
  }) : super(key: key);

  final List<CatalogModel> catalogs;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 15,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 3 / 2,
        ),
        itemCount: catalogs.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: CatalogCard(catalog: catalogs[index]),
            onTap: () {
              Navigator.of(context).pushNamed(
                "/catalogDetail",
                arguments: catalogs[index]
              );
            },
          );
        },
      ),
    );
  }
}
