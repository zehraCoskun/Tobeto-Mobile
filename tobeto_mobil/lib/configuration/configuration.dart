import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc/announcement_bloc.dart';
import 'package:tobeto_mobil/api/bloc/application_bloc/application_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_event.dart';
import 'package:tobeto_mobil/api/bloc/exam_bloc/exam_bloc.dart';
import 'package:tobeto_mobil/api/bloc/review_bloc/review_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_bloc.dart';
import 'package:tobeto_mobil/api/business/services/announcement_service.dart';
import 'package:tobeto_mobil/api/business/services/application_service.dart';
import 'package:tobeto_mobil/api/business/services/auth_service.dart';
import 'package:tobeto_mobil/api/business/services/exam_service.dart';
import 'package:tobeto_mobil/api/business/services/review_service.dart';
import 'package:tobeto_mobil/api/business/services/user_service.dart';
import 'package:tobeto_mobil/api/repository/announcement_repository.dart';
import 'package:tobeto_mobil/api/repository/application_repository.dart';
import 'package:tobeto_mobil/api/repository/auth_repository.dart';
import 'package:tobeto_mobil/api/repository/exam_repository.dart';
import 'package:tobeto_mobil/api/repository/review_repository.dart';
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

final applicationBlocProvider = BlocProvider(
  create: (context) => ApplicationBloc(
    ApplicationService(
      ApplicationRepository.instance(),
    ),
  ),
);

final examBlocProvider = BlocProvider(
  create: (context) => ExamBloc(
    ExamService(
      ExamRepository.intance(),
    ),
  ),
);

final reviewBlocProvider = BlocProvider(
  create: (context) => ReviewBloc(
    ReviewService(
      ReviewRepository.intance(),
    ),
  ),
);
