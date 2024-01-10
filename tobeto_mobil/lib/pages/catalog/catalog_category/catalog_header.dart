import 'package:flutter/material.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SearchBar(
        backgroundColor: const MaterialStatePropertyAll(Colors.white),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.search),
        ),
        hintText: "Search",
        controller: controller,
        trailing: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_voice_outlined,
              ),
            ),
          )
        ],
      ),
    );
  }
}
