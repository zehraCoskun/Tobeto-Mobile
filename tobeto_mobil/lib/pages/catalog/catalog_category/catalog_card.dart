import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/models/firebase_models/catalog_model.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

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
        color: Colors.white10, //!
        elevation: 4,
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [containerBasicShadow()],
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
            child: Image.network(
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
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: TobetoLightColors.beyaz,
            fontWeight: FontWeight.bold,
            shadows: [
              const BoxShadow(
                color: Colors.black,
                spreadRadius: 2,
                blurRadius: 2,
              ),
              containerBasicShadow(),
              containerBasicShadow(),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
