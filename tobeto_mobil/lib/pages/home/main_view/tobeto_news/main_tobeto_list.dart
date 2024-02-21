import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/tobeto_news_bloc/tobeto_news_bloc.dart';
import 'package:tobeto_mobil/api/bloc/tobeto_news_bloc/tobeto_news_event.dart';
import 'package:tobeto_mobil/api/bloc/tobeto_news_bloc/tobeto_news_state.dart';
import 'package:tobeto_mobil/pages/home/main_view/tobeto_news/main_tobeto_card.dart';

class MainTobetoList extends StatefulWidget {
  const MainTobetoList({
    Key? key,
  }) : super(key: key);
  @override
  State<MainTobetoList> createState() => _MainTobetoListState();
}

class _MainTobetoListState extends State<MainTobetoList>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late int _currentIndex;
  late int itemCount;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TobetoNewsBloc, TobetoNewsState>(
      builder: (context, state) {
        if (state is TobetoNewsStateInitial) {
          context.read<TobetoNewsBloc>().add(const TobetoNewsEventFetch());
        }
        if (state is TobetoNewsStateLoaded) {
          itemCount = state.tobetoNews.length;
          return AspectRatio(
              aspectRatio: 2 / 1,
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return MainTobetoCard(
                    tobetoNewsModel: state.tobetoNews[_currentIndex],
                  );
                },
              ));
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
