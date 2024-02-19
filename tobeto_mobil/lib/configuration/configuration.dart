import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc/announcement_bloc.dart';
import 'package:tobeto_mobil/api/bloc/application_bloc/application_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_event.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education_bloc/education_bloc.dart';
import 'package:tobeto_mobil/api/bloc/exam_bloc/exam_bloc.dart';
import 'package:tobeto_mobil/api/bloc/review_bloc/review_bloc.dart';
import 'package:tobeto_mobil/api/bloc/tobeto_news_bloc/tobeto_news_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_bloc.dart';
import 'package:tobeto_mobil/api/business/services/announcement_service.dart';
import 'package:tobeto_mobil/api/business/services/application_service.dart';
import 'package:tobeto_mobil/api/business/services/catalog_service.dart';
import 'package:tobeto_mobil/api/business/services/education_service.dart';
import 'package:tobeto_mobil/api/business/services/exam_service.dart';
import 'package:tobeto_mobil/api/business/services/review_service.dart';
import 'package:tobeto_mobil/api/business/services/tobeto_announcement_service.dart';
import 'package:tobeto_mobil/api/business/services/user_service.dart';
import 'package:tobeto_mobil/api/repository/announcement_repository.dart';
import 'package:tobeto_mobil/api/repository/application_repository.dart';
import 'package:tobeto_mobil/api/repository/auth_repository.dart';
import 'package:tobeto_mobil/api/repository/catalog_repository.dart';
import 'package:tobeto_mobil/api/repository/education_repository.dart';
import 'package:tobeto_mobil/api/repository/exam_repository.dart';
import 'package:tobeto_mobil/api/repository/review_repository.dart';
import 'package:tobeto_mobil/api/repository/tobeto_announcement_repository.dart';

final authBlocProvider = BlocProvider(
  create: (context) => AuthBloc(
    AuthRepository.instance(),
    UserService.instance(),
  )..add(const AuthEventInitialize()),
);

final userBlocProvider = BlocProvider(
  create: (context) => UserBloc(
    UserService.instance(),
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
    EducationService(
      EducationRepository.instance(),
    ),
  ),
);

final catalogBlocProvider = BlocProvider(
  create: (context) => CatalogBloc(
    CatalogService(
      CatalogRepository.instance(),
    ),
  ),
);

final tobetoNewsBlocProvider = BlocProvider(
  create: (context) => TobetoNewsBloc(
    TobetoNewsService(
      TobetoNewsRepository.instance(),
    ),
  ),
);
