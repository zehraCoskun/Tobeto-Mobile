import 'package:flutter/material.dart';
import 'package:tobeto_mobil/consts/constants.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: const Text(
                    'Zehra Coşkun',
                    style: TextStyle(color: Colors.black87),
                  ),
                  accountEmail: const Text(
                    'zehra@example.com',
                    style: TextStyle(color: Colors.black87),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.background,
                    child: Icon(
                      Icons.person_2_outlined,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                  onDetailsPressed: () {
                    Navigator.of(context).pushNamed("/profile");
                  },
                ),
                ListTile(
                  title: const Text('🏠 Anasayfa'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('🖊️ Değerlendirmeler'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('😊 Profilim'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('📜 Katalog'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('🗓️ Takvim'),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Image.asset(
                      logoT,
                      height: 22,
                    ),
                    const Text("  Tobeto")
                  ]),
                  onTap: () {},
                ),
                //ToggleButtons(children: [Icon(Icons.light_mode), Icon(Icons.dark_mode)], isSelected: [true, false]),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: padding16, vertical: padding32),
              child: Image.asset(
                logo,
                height: padding32,
              ),
            ),
          )
        ],
      ),
    );
  }
}
