import 'package:flutter/material.dart';
import 'package:tobeto_mobil/consts/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text(
                      'Zehra Coşkun',
                      style: TextStyle(color: Colors.black),
                    ), // Kullanıcı adı
                    accountEmail: Text('zehra@example.com'), // Kullanıcı e-posta adresi
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person),
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  ListTile(
                    title: const Text('🏠 Anasayfa'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('🖊️ Değerlendirmeler'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('😊 Profilim'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('📜 Katalog'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Image.asset(logo),
                padding: EdgeInsets.symmetric(horizontal: padding16, vertical: padding32),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(),
      body: Text("gfjhgkl"),
    );
  }
}
