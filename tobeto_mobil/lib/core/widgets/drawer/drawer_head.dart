import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_state.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/pages/drawer_text.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/models/user/user_model.dart';

class DrawerHead extends StatelessWidget {
  const DrawerHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserModel? user;

    final state = context.watch<UserBloc>().state;

    if (state is UserStateFetched) {
      user = state.userModel;
    } else {
      user = null;
    }

    return UserAccountsDrawerHeader(
      arrowColor: Theme.of(context).colorScheme.onBackground,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSecondary,
      ),
      accountName: Text(
        user?.fullName ?? drawerHeaderNullNameText,
        style: const TextStyle(color: Colors.black87),
      ),
      accountEmail: Text(
        user?.email ?? drawerHeaderNullEmailText,
        style: const TextStyle(color: Colors.black87),
      ),
      currentAccountPicture: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            containerBasicShadow(),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: user?.imageUrl != null
              ? Image.network(
                  user!.imageUrl!,
                  height: 120,
                  width: 120,
                )
              : Image.asset(
                  logo,
                  height: 120,
                  width: 120,
                ),
        ),
      ),
    );
  }
}
