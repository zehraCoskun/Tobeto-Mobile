import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_bloc.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_event.dart';
import 'package:tobeto_mobil/models/catalog/catalog_filter_option.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_filter/catalog_filter/catalog_filter_item.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class CatalogFilterOptionWidget extends StatefulWidget {
  const CatalogFilterOptionWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CatalogFilterOptionWidget> createState() =>
      _CatalogFilterOptionWidgetState();
}

class _CatalogFilterOptionWidgetState extends State<CatalogFilterOptionWidget> {
  String? selectedItem;
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
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return buildBottomSheet(catalogFilterItem);
          },
        );
      },
      child: IntrinsicWidth(
        stepHeight: 8,
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
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
      ),
    );
  }

  Widget buildBottomSheet(CatalogFilterItem catalogFilterItem) {
    List<CatalogFilterOption> itemList = catalogFilterItem.toList();

    return Material(
      color: TobetoLightColors.krem,
      borderRadius: BorderRadius.circular(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: itemList.map((item) {
          return ListTile(
            onTap: () {
              if (item.title == "all") {
                context.read<CatalogBloc>().add(const CatalogEventFetch());
              }
              context.read<CatalogBloc>().add(
                    CatalogEventFetchFiltered(
                        filter: Filter(catalogFilterItem.name,
                            isEqualTo: item.title)),
                  );
              Navigator.of(context).pop();
            },
            title: Text(
              item.title.toString(),
              textAlign: TextAlign.center,
            ),
          );
        }).toList(),
      ),
    );
  }
}
