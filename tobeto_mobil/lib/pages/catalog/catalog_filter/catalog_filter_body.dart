import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/enums/catalog_filter_item.dart';

class CatalogFilterBody extends StatelessWidget {
  const CatalogFilterBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              ...CatalogFilterItem.values.map((item) {
                return buildFilterItem(item, context);
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFilterItem(
      CatalogFilterItem catalogFilterItem, BuildContext context) {
    return IntrinsicWidth(
      stepHeight: 8,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          // border: const Border(
          //   top: BorderSide(
          //     width: 0.1,
          //   ),
          //   left: BorderSide(
          //     width: 0.1,
          //   ),
          //   right: BorderSide(width: 0.3),
          //   bottom: BorderSide(
          //     width: 0.3,
          //   ),
          // ),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
          ),
          boxShadow: kElevationToShadow[1],
          color: Colors.white,
        ),
        child: Text(
          catalogFilterItem.toString(),
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
