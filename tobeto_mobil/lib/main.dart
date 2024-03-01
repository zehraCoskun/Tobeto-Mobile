import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_event.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_state.dart';
import 'package:tobeto_mobil/configuration/configuration.dart';
import 'package:tobeto_mobil/constants/global_text.dart';
import 'package:tobeto_mobil/constants/pages/auth_text.dart';
import 'package:tobeto_mobil/core/widgets/dialogs/show_auth_error.dart';
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
                text: loadingStateWidgetLoadingText,
              );
            } else if (state is AuthStateRecoverLinkSent) {
              _showOverlay(context, recoveryLinkSentText);
            } else {
              LoadingStateWidget.instance().hide();
            }

            final authError = state.authError;
            if (authError != null) {
              showAuthError(
                authError: authError,
                context: context,
              );
            }
          },
          builder: (context, state) {
            if (state is AuthStateInitial) {
              context.read<AuthBloc>().add(
                    const AuthEventInitialize(),
                  );
              return Container();
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

void _showOverlay(BuildContext context, String text) {
  LoadingStateWidget.instance().hide();
  LoadingStateWidget.instance().show(
    context: context,
    text: text,
    onClose: () {
      Navigator.of(context).pushReplacementNamed("/login");
      LoadingStateWidget.instance().hide();
    },
  );
}
