import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_event.dart';
import 'package:tobeto_mobil/api/bloc/profile_bloc/profile_bloc.dart';
import 'package:tobeto_mobil/api/business/services/auth_service.dart';
import 'package:tobeto_mobil/api/business/services/profile_service.dart';
import 'package:tobeto_mobil/api/business/services/user_service.dart';
import 'package:tobeto_mobil/api/repository/auth_repository.dart';
import 'package:tobeto_mobil/api/repository/profile_repository.dart';
import 'package:tobeto_mobil/api/repository/user_repository.dart';

final userBlocProvider = BlocProvider(
  create: (context) => AuthBloc(
    AuthService(
      AuthRepository.instance(),
      UserService(UserRepository.instance()),
    ),
  )..add(AuthEventInitialize()),
);

final authBlocProvider = BlocProvider(
  create: (context) => AuthBloc(AuthService(
    AuthRepository.instance(),
    UserService(UserRepository.instance()),
  )),
);

final profileBlocProvider = BlocProvider(
  create: (context) => ProfileBloc(
    ProfileService(ProfileRepository.instance()),
  ),
);
