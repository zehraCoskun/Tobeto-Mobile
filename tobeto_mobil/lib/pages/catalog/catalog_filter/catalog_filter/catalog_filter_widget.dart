import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/catalog_text.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_filter/catalog_filter/catalog_filter_item.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class CatalogFilterWidget extends StatelessWidget {
  const CatalogFilterWidget({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return buildFilterBottomSheet();
            },
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(
              flex: 3,
            ),
            Icon(
              Icons.filter_alt_outlined,
              size: 20,
              color: Theme.of(context).colorScheme.outline,
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              catalogHeaderFilterText,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFilterBottomSheet() {
    const itemList = CatalogFilterItem.values;

    return Material(
      color: TobetoLightColors.krem,
      borderRadius: BorderRadius.circular(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: itemList.map((item) {
          return ListTile(
            onTap: () {
              // context.read<CatalogBloc>().add(
              //       CatalogEventFetchFiltered(filter: Filter(
              //         item.name,
              //         isEqualTo: item.name,
              //       )),
              //     );
              Navigator.of(context).pop();
            },
            title: Text(
              item.toString(),
              textAlign: TextAlign.center,
            ),
          );
        }).toList(),
      ),
    );
  }
}
