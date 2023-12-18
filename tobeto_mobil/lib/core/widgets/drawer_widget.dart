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
          /* burayi fonksiyonlara ayirdim build fonksiyonu daha guzel oldu boyle
            ayrica drawerin istedigimiz parcasini bulmamiz daha kolay */
          buildDrawerHeader(context),
          buildDrawerItems(items),
          // const Divider(),
          // Expanded(
          //   flex: 4,
          //   child: ListTile(
          //     title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          //       Image.asset(
          //         logoT,
          //         height: 22,
          //       ),
          //       const Text("  Tobeto")
          //     ]),
          //     onTap: () {},
          //   ),
          // ),
          buildFooterLogo(),
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
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          /* herbir listtile DrawerItem enumindaki toString()
          fonksiyonundan donen veriyi title parametresine aliyor vede on tap toRoute()
          fonksiyonundaki navigation stringini aliyor stringleri
          main fonksiyonunda ekledigimizde sayfalara kolaylikla gecis ayarlar bu sekilde,
          
          suan icin string maindeki var olan routelar icerisinde degilken exception atiyor 
          nasil cozucegimize sonra bakabiliriz */
          return ListTile(
            onTap: () {
              final currentRoute = ModalRoute.of(context)?.settings.name;

              //bulundugumuz sayfa anasayfa ise anasayfaya tiklandiginda route islemi
              //gerceklestirmez
              if (currentRoute != null &&
                  currentRoute != drawerItems[index].getRouteName()) {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(
                  drawerItems[index].getRouteName(),
                );
              } else {
                //tiklanan sayfa bulundugumuz sayfa ise draweri kapatir
                Navigator.of(context).pop();
              }
            },
            title: Text(drawerItems[index].getString()),
          );
        },
      ),
    );
  }

  Widget buildFooterLogo() {
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
