import 'package:flutter/material.dart';

class CatalogFilterHeader extends StatelessWidget {
  const CatalogFilterHeader({
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
            color: Theme.of(context).colorScheme.outline, //Colors.black26,
          ),
        ),
        child: Row(
          children: <Widget>[
            buildShareSection(context),
            buildDivider(context),
            buildOrderBySection(context),
            buildDivider(context),
            buildFilterSection(context),
          ],
        ),
      ),
    );
  }

  Widget buildDivider(BuildContext context) {
    return VerticalDivider(
      color: Theme.of(context).colorScheme.outline, //Colors.black54,
      thickness: 0.8,
    );
  }

  Widget buildShareSection(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: Container(
          alignment: Alignment.center,
          child: Icon(
            Icons.favorite_border_outlined,
            size: 20,
            color: Theme.of(context).colorScheme.outline,
          ),
        ),
      ),
    );
  }

  Widget buildOrderBySection(BuildContext context) {
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
              "Sirala",
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

  Widget buildFilterSection(BuildContext context) {
    return Expanded(
      flex: 3,
      child: InkWell(
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
              "Filtrele",
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
}
