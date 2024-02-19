import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/tobeto_news_bloc/tobeto_news_bloc.dart';
import 'package:tobeto_mobil/api/bloc/tobeto_news_bloc/tobeto_news_event.dart';
import 'package:tobeto_mobil/api/bloc/tobeto_news_bloc/tobeto_news_state.dart';
import 'package:tobeto_mobil/pages/home/main_view/tobeto/main_tobeto_card.dart';

class MainTobetoList extends StatelessWidget {
  const MainTobetoList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TobetoNewsBloc, TobetoNewsState>(
      builder: (context, state) {
        if (state is TobetoNewsStateInitial) {
          context.read<TobetoNewsBloc>().add(const TobetoNewsEventFetch());
        }
        if (state is TobetoNewsStateLoaded) {
          return AspectRatio(
            aspectRatio: 3 / 1,
            child: ListView.builder(
              itemCount: state.tobetoNewws.length,
              itemBuilder: (context, index) {
                return MainTobetoCard(tobetoNewsModel: state.tobetoNewws[index]);
              },
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
