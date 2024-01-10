import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/catalog_model.dart';
import 'package:tobeto_mobil/models/enums/catalog_category_item.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_category/catalog_card.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_category/catalog_header.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({
    Key? key,
    required this.catalogItems,
    required this.catalogList,
  }) : super(key: key);
  final List<CatalogCategoryItem> catalogItems;
  final List<CatalogModel> catalogList;

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            CatalogHeader(),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: catalogItems.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black38), borderRadius: BorderRadius.circular(8), color: Colors.white60),
                      child: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            catalogItems[index].toString(),
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 15,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 2 / 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: catalogList.length,
                itemBuilder: (context, index) {
                  return Container(
                    //color: Colors.red,
                    child: CatalogCard(catalog: catalogList[index]),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
