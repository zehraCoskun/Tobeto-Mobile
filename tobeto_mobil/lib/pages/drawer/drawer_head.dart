import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/models/user_model.dart';

class DrawerHead extends StatelessWidget {
  const DrawerHead({
    Key? key,
    required this.user,
  }) : super(key: key);
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      arrowColor: Theme.of(context).colorScheme.onBackground,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSecondary,
      ),

      // user.name,
      accountName: Text(
        user.userName,
        style: const TextStyle(color: Colors.black87),
      ),

      // user.email,
      accountEmail: Text(
        user.userEmail,
        style: const TextStyle(color: Colors.black87),
      ),

      // user.photo?
      currentAccountPicture: Container(
        width: 120,
        height: 120,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: Image.asset(
            user.userPicture != null ? user.userPicture! : ders2,
            height: 120,
            width: 120,
          ),
        ),
      ),
    );
  }
}
