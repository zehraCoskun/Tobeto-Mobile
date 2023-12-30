import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education/education_bloc/education_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education/educations_bloc/educations_bloc.dart';
import 'package:tobeto_mobil/api/repository/education_repository.dart';
import 'package:tobeto_mobil/utils/router/route_generator.dart';
import 'package:tobeto_mobil/utils/theme/theme_generator.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => EducationBloc(
            educationRepository: EducationRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => EducationsBloc(
            educationRepository: EducationRepository(),
          ),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeGenerator.lightTheme(),
        darkTheme: ThemeGenerator.darkTheme(),
        themeMode: ThemeMode.system,
        initialRoute: "/login",
        onGenerateRoute: (route) => RouteGenerator.onGenerateRoute(route),
      ),
    ),
  );
}
