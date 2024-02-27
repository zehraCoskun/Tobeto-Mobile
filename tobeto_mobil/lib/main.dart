import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_event.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_state.dart';
import 'package:tobeto_mobil/configuration/configuration.dart';
import 'package:tobeto_mobil/core/widgets/loading_widget/loading_state_widget.dart';
import 'package:tobeto_mobil/firebase_options.dart';
import 'package:tobeto_mobil/pages/authentication/login/login_page.dart';
import 'package:tobeto_mobil/pages/home/home_page.dart';
import 'package:tobeto_mobil/pages/no_connection/no_connection_page.dart';
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
        announcementBlocProvider,
        applicationBlocProvider,
        examBlocProvider,
        reviewBlocProvider,
        educationBlocProvider,
        catalogBlocProvider,
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
            if (state is AuthStateInitial) {
              context.read<AuthBloc>().add(
                    AuthEventInitialize(user: state.user),
                  );
            }
            if (state is AuthStateNoConnection) {
              return const NoConnectionPage();
            }
            if (state is AuthStateLoggedIn) {
              return const HomePage();
            }
            return const LoginPage();
          },
        ),
      ),
    ),
  );
}
