import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/catalog_model.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_category/catalog_card.dart';

class CatalogBody extends StatelessWidget {
  const CatalogBody({
    Key? key,
    required this.catelogModels,
  }) : super(key: key);

  final List<CatalogModel> catelogModels;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 15,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 2 / 1,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: catelogModels.length,
        itemBuilder: (context, index) {
          return Container(
            //color: Colors.red,
            child: CatalogCard(catalog: catelogModels[index]),
          );
        },
      ),
    );
  }
}
