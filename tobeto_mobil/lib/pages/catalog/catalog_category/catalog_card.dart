import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/catalog_model.dart';

class CatalogCard extends StatelessWidget {
  const CatalogCard({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  final CatalogModel catalog;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: Theme.of(context).cardColor, //!
        elevation: 4,
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurStyle: BlurStyle.solid,
                color: Colors.black45,
                spreadRadius: 4,
                blurRadius: 4,
                offset: Offset(4, 4),
              ),
            ],
          ),
          child: CardContent(catalog: catalog),
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  const CardContent({
    super.key,
    required this.catalog,
  });

  final CatalogModel catalog;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          child: Opacity(
            opacity: 0.7,
            child: Image.asset(
              catalog.thumbnail,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).colorScheme.outline.withOpacity(0.4),
        ),
        Text(
          catalog.title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            shadows: [
              BoxShadow(
                color: Theme.of(context).colorScheme.outline,
                spreadRadius: 2,
                blurRadius: 5,
              ),
              BoxShadow(
                color: Theme.of(context).colorScheme.outline,
                spreadRadius: 2,
                blurRadius: 5,
              ),
              BoxShadow(
                color: Theme.of(context).colorScheme.outline,
                spreadRadius: 2,
                blurRadius: 10,
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
