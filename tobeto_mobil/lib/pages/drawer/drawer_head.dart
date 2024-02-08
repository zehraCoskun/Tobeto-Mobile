import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_state.dart';
import 'package:tobeto_mobil/constants/image_text.dart';

class DrawerHead extends StatelessWidget {
  const DrawerHead({
    Key? key,
    //this.user,
    this.userId,
  }) : super(key: key);
  //final UserModel? user;
  final String? userId;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is UserStateFetching) {
          if (state.user != null) {
            return Column(
              children: [
                UserAccountsDrawerHeader(
                  arrowColor: Theme.of(context).colorScheme.onBackground,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                  accountName: Text(
                    state.user!.fullName ?? "kullanıcı adı",
                    style: const TextStyle(color: Colors.black87),
                  ),
                  accountEmail: Text(
                    state.user!.email ?? "email adresi",
                    style: const TextStyle(color: Colors.black87),
                  ),
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
                        ders2,
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                )
              ],
            );
          } else {
            return const CircularProgressIndicator();
          }
        } else if (state is UserStateError) {
          return Text(
            'Hata: ${state.errorMessage}',
            style: const TextStyle(fontSize: 16, color: Colors.red),
          );
        } else {
          return Text(
            'state : ${state.toString()}',
            style: const TextStyle(fontSize: 16, color: Colors.black),
          );
        }
      },
    );
  }
}
