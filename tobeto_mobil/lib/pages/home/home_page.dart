import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_state.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_event.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_state.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/core/widgets/loading_state_widget.dart';
import 'package:tobeto_mobil/core/widgets/secondary_background.dart';
import 'package:tobeto_mobil/pages/home/home_body.dart';
import 'package:tobeto_mobil/pages/home/home_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      //userModel: userModel,
      appBar: HomeHeader(
        tabController: _tabController,
      ),
      body: SecondaryBackgroundWidget(
        child: BlocConsumer<UserBloc, UserState>(
          listener: (context, state) {
            if (state is UserStateLoading) {
              LoadingStateWidget.instance().show(
                context: context,
                text: "Loading...",
              );
            } else {
              LoadingStateWidget.instance().hide();
            }
          },
          builder: (context, state) {
            if (state is UserStateInitial || state is UserStateUpdated) {
              final state = context.read<AuthBloc>().state as AuthStateLoggedIn;
              context.read<UserBloc>().add(UserEventFetch(id: state.user.uid));
            }
            if (state is UserStateFetched) {
              return HomeBody(
                controller: _tabController,
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
