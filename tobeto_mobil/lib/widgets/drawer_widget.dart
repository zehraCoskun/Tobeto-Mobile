import 'package:flutter/material.dart';
import 'package:tobeto_mobil/consts/constants.dart';
import 'package:tobeto_mobil/models/enums/drawer_item.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const drawerItems = DrawerItem.values;

    return Drawer(
      child: Column(
        children: [
          /* burayi fonksiyonlara ayirdim build fonksiyonu daha guzel oldu boyle
            ayrica drawerin istedigimiz parcasini bulmamiz daha kolay */
          buildDrawerHeader(context),
          buildDrawerItems(drawerItems),
          buildFooterLogo(),
        ],
      ),
    );
  }

  Expanded buildDrawerItems(List<DrawerItem> drawerItems) {
    return Expanded(
      child: ListView.builder(
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          /* herbir listtile DrawerItem enumindaki toString()
          fonksiyonundan donen title parametresini aliyor vede on tap toRoute()
          fonksiyonundaki navigation stringini aliyor stringleri
          main fonksiyonunda ekledigimizde sayfalara kolaylikla gecis ayarlarli bu sekilde
          dahalik string maindeki ile uygun degilken exception atiyor nasil cozucegimize
          sonra bakabiliriz */
          return ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(
                drawerItems[index].getRoute(),
              );
            },
            title: Text(drawerItems[index].getString()),
          );
        },
      ),
    );
  }

  Align buildFooterLogo() {
    // Tobeto logosu
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: padding16,
          vertical: padding32,
        ),
        child: Image.asset(
          logo,
          height: padding32,
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
      accountName: const Text(
        'Zehra Coşkun',
        //style: TextStyle(color: Colors.black87),
      ),
      accountEmail: const Text(
        'zehra@example.com',
        //style: TextStyle(color: Colors.black87),
      ),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Icon(
          Icons.person_2_outlined,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      onDetailsPressed: () {
        Navigator.of(context).pushNamed("/profile");
      },
    );
  }
}
