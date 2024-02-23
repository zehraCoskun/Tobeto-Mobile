import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_filter/catalog_filter/catalog_filter_item.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class CatalogFilterOptionWidget extends StatefulWidget {
  const CatalogFilterOptionWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CatalogFilterOptionWidget> createState() => _CatalogFilterOptionWidgetState();
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

  Widget buildFilterItem(CatalogFilterItem catalogFilterItem, BuildContext context) {
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
    List<String> itemList = catalogFilterItem.toList();

    return Material(
      color: TobetoLightColors.krem,
      borderRadius: BorderRadius.circular(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: itemList.map((item) {
          return ListTile(
            title: Row(
              children: [
                Radio<String>(
                  value: item,
                  groupValue: selectedItem,
                  onChanged: (value) {
                    setState(() {
                      selectedItem = value;
                      //burada filtrelemeyi de yapması lazım
                    });
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: Text(item),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
