import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc.dart/announcement_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_event.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_bloc.dart';
import 'package:tobeto_mobil/api/business/services/announcement_service.dart';
import 'package:tobeto_mobil/api/business/services/auth_service.dart';
import 'package:tobeto_mobil/api/business/services/user_service.dart';
import 'package:tobeto_mobil/api/repository/announcement_repository.dart';
import 'package:tobeto_mobil/api/repository/auth_repository.dart';
import 'package:tobeto_mobil/api/repository/user_repository.dart';

final authBlocProvider = BlocProvider(
  create: (context) => AuthBloc(
    AuthService(
      AuthRepository.instance(),
      UserService(UserRepository.instance()),
    ),
  )..add(AuthEventInitialize()),
);

final userBlocProvider = BlocProvider(
  create: (context) => UserBloc(
    UserService(
      UserRepository.instance(),
    ),
  ),
);

final announcementBlocProvider = BlocProvider(
  create: (context) => AnnouncementBloc(
    AnnouncementService(
      AnnouncementRepository.instance(),
    ),
  ),
);
