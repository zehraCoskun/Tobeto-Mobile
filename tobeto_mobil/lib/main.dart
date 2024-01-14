import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/providers.dart';
import 'package:tobeto_mobil/utils/router/route_generator.dart';
import 'package:tobeto_mobil/utils/theme/theme_generator.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeGenerator.lightTheme(),
        darkTheme: ThemeGenerator.darkTheme(),
        themeMode: ThemeMode.system,
        //home: const SignUpPage(),
        initialRoute: "/login",
        onGenerateRoute: (route) => RouteGenerator.onGenerateRoute(route),
      ),
    ),
  );
}