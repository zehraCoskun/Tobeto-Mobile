import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc/announcement_bloc.dart';
import 'package:tobeto_mobil/api/bloc/application_bloc/application_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_bloc.dart';
import 'package:tobeto_mobil/api/bloc/exam_bloc/exam_bloc.dart';
import 'package:tobeto_mobil/api/bloc/review_bloc/review_bloc.dart';
import 'package:tobeto_mobil/api/bloc/team_bloc/team_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_bloc.dart';
import 'package:tobeto_mobil/api/business/services/announcement_service.dart';
import 'package:tobeto_mobil/api/business/services/application_service.dart';
import 'package:tobeto_mobil/api/business/services/auth_service.dart';
import 'package:tobeto_mobil/api/business/services/catalog_service.dart';
import 'package:tobeto_mobil/api/business/services/education_service.dart';
import 'package:tobeto_mobil/api/business/services/exam_service.dart';
import 'package:tobeto_mobil/api/business/services/review_service.dart';
import 'package:tobeto_mobil/api/business/services/team_service.dart';
import 'package:tobeto_mobil/api/business/services/user_service.dart';
import 'package:tobeto_mobil/api/repository/announcement_repository.dart';
import 'package:tobeto_mobil/api/repository/application_repository.dart';
import 'package:tobeto_mobil/api/repository/exam_repository.dart';
import 'package:tobeto_mobil/api/repository/review_repository.dart';
import 'package:tobeto_mobil/api/repository/team_repository.dart';

final authBlocProvider = BlocProvider(
  create: (context) => AuthBloc(
    AuthService.instance(),
  ),
);

final userBlocProvider = BlocProvider(
  create: (context) => userBloc,
);

final userBloc = UserBloc(
  UserService.instance(),
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
      ExamRepository.instance(),
    ),
  ),
);

final reviewBlocProvider = BlocProvider(
  create: (context) => ReviewBloc(
    ReviewService(
      ReviewRepository.instance(),
    ),
  ),
);

final educationBlocProvider = BlocProvider(
  create: (context) => EducationBloc(
    EducationService.instance(),
  ),
);

final catalogBlocProvider = BlocProvider(
  create: (context) => CatalogBloc(
    CatalogService.instance(),
  ),
);

final teamBlocProvider = BlocProvider(
  create: (context) => TeamBloc(
    TeamService(
      TeamRepository.instance(),
    ),
  ),
);
