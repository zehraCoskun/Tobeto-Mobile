import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/enums/drawer_item.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({
    Key? key,
    required this.drawerItems,
  }) : super(key: key);

  final List<DrawerItem> drawerItems;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(
                drawerItems[index].getRouteName(),
              );
            },
            title: Text(
              drawerItems[index].getString(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          );
        },
      ),
    );
  }
}
