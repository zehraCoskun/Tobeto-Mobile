import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/catalog_text.dart';

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
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(
              flex: 3,
            ),
            IconButton(
              icon: Icon(
                Icons.filter_alt_outlined,
                size: 20,
                color: Theme.of(context).colorScheme.outline,
              ),
              onPressed: () {
                //burada filtrelemeye ne ekleyeceğiz?
              },
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
}

