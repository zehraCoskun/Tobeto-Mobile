import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_filter/catalog_filter/catalog_filter_widget.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_filter/catalog_order/catalog_order_widget.dart';

class CatalogOrderAndFilter extends StatelessWidget {
  const CatalogOrderAndFilter({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.all(2),
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
          ),
        ),
        child: Row(
          children: <Widget>[
            CatalogOrderWidget(context: context),
            buildDivider(context),
            CatalogFilterWidget(context: context),
          ],
        ),
      ),
    );
  }

  Widget buildDivider(BuildContext context) {
    return VerticalDivider(
      color: Theme.of(context).colorScheme.outline,
      thickness: 0.8,
    );
  }
}
