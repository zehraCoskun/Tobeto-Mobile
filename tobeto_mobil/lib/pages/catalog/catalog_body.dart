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
          maxCrossAxisExtent: 250,
          childAspectRatio: 3 / 2,
        ),
        itemCount: catelogModels.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: CatalogCard(catalog: catelogModels[index]),
            onTap: () {
              //Navigator.of(context).pushNamed("/detail", arguments: catalogList[index]);
              //TODO: detay sayfası yapmadık hiç :(((
              print(catelogModels[index].id);
            },
          );
        },
      ),
    );
  }
}
