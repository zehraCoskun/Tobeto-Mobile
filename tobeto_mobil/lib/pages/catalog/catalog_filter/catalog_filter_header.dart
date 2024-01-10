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
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.black26,
          ),
        ),
        child: Row(
          children: <Widget>[
            buildShareSection(),
            buildDivider(),
            buildOrderBySection(),
            buildDivider(),
            buildFilterSection(),
          ],
        ),
      ),
    );
  }

  Widget buildDivider() {
    return const VerticalDivider(
      color: Colors.black54,
      thickness: 0.8,
    );
  }

  Widget buildShareSection() {
    return Expanded(
      child: InkWell(
        child: Container(
          alignment: Alignment.center,
          child: const Icon(
            Icons.ios_share_outlined,
            size: 20,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }

  Widget buildOrderBySection() {
    return const Expanded(
      flex: 3,
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Spacer(
              flex: 3,
            ),
            Icon(
              Icons.thumbs_up_down_outlined,
              size: 20,
              color: Colors.black87,
            ),
            Spacer(
              flex: 1,
            ),
            Text("Sirala"),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFilterSection() {
    return Expanded(
      flex: 3,
      child: InkWell(
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(
              flex: 3,
            ),
            Icon(
              Icons.filter_alt_outlined,
              size: 20,
              color: Colors.black87,
            ),
            Spacer(
              flex: 1,
            ),
            Text("Filtrele"),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
