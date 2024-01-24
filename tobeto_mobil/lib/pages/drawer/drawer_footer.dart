import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';

class DrawerFooter extends StatelessWidget {
  const DrawerFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 32,
        ),
        child: MaterialButton(
          onPressed: () {},
          child: Image.asset(
            logo,
            height: 32,
            color:
                Theme.of(context).brightness == Brightness.dark ? Theme.of(context).colorScheme.onSecondary : Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
