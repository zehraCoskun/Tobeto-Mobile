import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/tobeto_news_bloc/tobeto_news_bloc.dart';
import 'package:tobeto_mobil/api/bloc/tobeto_news_bloc/tobeto_news_event.dart';
import 'package:tobeto_mobil/api/bloc/tobeto_news_bloc/tobeto_news_state.dart';
import 'package:tobeto_mobil/pages/home/main_view/tobeto/main_tobeto_card.dart';
// class MainTobetoList extends StatefulWidget {
//   const MainTobetoList({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<MainTobetoList> createState() => _MainTobetoListState();
// }

// class _MainTobetoListState extends State<MainTobetoList> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<TobetoNewsBloc, TobetoNewsState>(
//       builder: (context, state) {
//         if (state is TobetoNewsStateInitial) {
//           context.read<TobetoNewsBloc>().add(const TobetoNewsEventFetch());
//         }
//         if (state is TobetoNewsStateLoaded) {
//           return AspectRatio(
//             aspectRatio: 2 / 1,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: state.tobetoNewws.length,
//               itemBuilder: (context, index) {
//                 return SizedBox(width: 400, child: MainTobetoCard(tobetoNewsModel: state.tobetoNewws[index]));
//               },
//             ),
//           );
//         }
//         return const Center(
//           child: CircularProgressIndicator(),
//         );
//       },
//     );
//   }
// }

class MainTobetoList extends StatefulWidget {
  const MainTobetoList({
    Key? key,
  }) : super(key: key);
  @override
  State<MainTobetoList> createState() => _MainTobetoListState();
}

class _MainTobetoListState extends State<MainTobetoList> {
  late int _currentIndex;
  late int itemCount;
  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  void _startAnimation(int itemCount) {
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _currentIndex = ((_currentIndex + 1) % itemCount);
        _startAnimation(itemCount);
      });
    });
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
          _startAnimation(itemCount);
          return AspectRatio(
            aspectRatio: 2 / 1,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: MainTobetoCard(
                key: UniqueKey(),
                tobetoNewsModel: state.tobetoNews[_currentIndex],
              ),
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
