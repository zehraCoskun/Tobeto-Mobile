import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/catalog_text.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_filter/catalog_order/catalog_order_item.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class CatalogOrderWidget extends StatefulWidget {
  const CatalogOrderWidget({
    super.key,
    required this.context,
  });
  final BuildContext context;

  @override
  State<CatalogOrderWidget> createState() => _CatalogOrderWidgetState();
}

class _CatalogOrderWidgetState extends State<CatalogOrderWidget> {
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Spacer(
              flex: 3,
            ),
            Icon(
              Icons.thumbs_up_down_outlined,
              size: 20,
              color: Theme.of(context).colorScheme.outline,
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              catalogHeaderOrderText,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
        onTap: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return buildOrderBottomSheet();
            },
          );
        },
      ),
    );
  }

  Widget buildOrderItem(CatalogOrderItem catalogOrderItem, BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return buildOrderBottomSheet();
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
            catalogOrderItem.toString(),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }

  Widget buildOrderBottomSheet() {
    List<String> itemList = CatalogOrderItem.getAllOrderItems();
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
                    });
                    Navigator.pop(widget.context);
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