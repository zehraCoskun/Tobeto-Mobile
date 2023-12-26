import 'package:flutter/material.dart';
import 'package:tobeto_mobil/consts/constants.dart';
import 'package:tobeto_mobil/models/enums/drawer_item.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
    this.items,
    //this.user,
  });

  final List<DrawerItem>? items;
  //final User user;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          buildDrawerHeader(context),
          buildDrawerItems(items),
          buildFooterLogo(context),
          const Text("© 2022 Tobeto"),
        ],
      ),
    );
  }

  Widget buildDrawerItems(List<DrawerItem>? drawerItems) {
    if (drawerItems == null) {
      return const SizedBox();
    }
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
            title: Text(drawerItems[index].getString()),
          );
        },
      ),
    );
  }

  Widget buildFooterLogo(BuildContext context) {
    // Tobeto logosu
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: padding16,
          vertical: padding32,
        ),
        child: MaterialButton(
          onPressed: () {},
          child: Image.asset(
            logo,
            height: padding32,
            color:
                Theme.of(context).brightness == Brightness.dark ? Theme.of(context).colorScheme.onSecondary : Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }

  UserAccountsDrawerHeader buildDrawerHeader(BuildContext context) {
    return UserAccountsDrawerHeader(
      arrowColor: Theme.of(context).colorScheme.onBackground,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSecondary,
      ),

      // user.name,
      accountName: const Text(
        'Zehra Coşkun',
        style: TextStyle(color: Colors.black87),
      ),

      // user.email,
      accountEmail: const Text(
        'zehra@example.com',
        style: TextStyle(color: Colors.black87),
      ),

      // user.photo?
      currentAccountPicture: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Icon(
          Icons.person_2_outlined,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
