import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/catalog_text.dart';

class CatalogSearchBar extends StatelessWidget {
  final void Function(String) onChanged;

  const CatalogSearchBar({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      backgroundColor: const MaterialStatePropertyAll(Colors.white),
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(Icons.search),
      ),
      hintText: catalogSearchBarHintText,
      onChanged: onChanged,
      trailing: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.keyboard_voice_outlined,
            color: Theme.of(context).appBarTheme.backgroundColor,
          ),
        ),
      ],
    );
  }
}
