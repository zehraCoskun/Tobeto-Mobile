import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_state.dart';
import 'package:tobeto_mobil/configuration/configuration.dart';
import 'package:tobeto_mobil/core/widgets/loading_widget/loading_state_widget.dart';
import 'package:tobeto_mobil/firebase_options.dart';
import 'package:tobeto_mobil/pages/authentication/login/login_page.dart';
import 'package:tobeto_mobil/pages/home/home_page.dart';
import 'package:tobeto_mobil/utils/router/route_generator.dart';
import 'package:tobeto_mobil/utils/theme/theme_generator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiBlocProvider(
      providers: [
        authBlocProvider,
        userBlocProvider,
        calendarBlocProvider,
        announcementBlocProvider,
        applicationBlocProvider,
        examBlocProvider,
        reviewBlocProvider,
        educationBlocProvider,
        catalogBlocProvider,
        tobetoNewsBlocProvider,
        teamBlocProvider,
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeGenerator.lightTheme(),
        darkTheme: ThemeGenerator.darkTheme(),
        themeMode: ThemeMode.system,
        onGenerateRoute: (route) => RouteGenerator.onGenerateRoute(route),
        home: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthStateLoading) {
              LoadingStateWidget.instance().show(
                context: context,
                text: "Loading...",
              );
            } else {
              LoadingStateWidget.instance().hide();
            }
          },
          builder: (context, state) {
            if (state is AuthStateLoggedIn) {
              return const HomePage();
            } else if (state is AuthStateLoggedOut || state is AuthStateRegistered) {
              return const LoginPage();
            }
            return Container();
          },
        ),
      ),
    ),
  );
}
