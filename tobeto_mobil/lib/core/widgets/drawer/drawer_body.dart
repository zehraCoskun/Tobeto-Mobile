import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/drawer/drawer_item.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: DrawerItem.values.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(
                DrawerItem.values[index].getRouteName(),
              );
            },
            title: Text(
              DrawerItem.values[index].getString(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          );
        },
      ),
    );
  }
}
