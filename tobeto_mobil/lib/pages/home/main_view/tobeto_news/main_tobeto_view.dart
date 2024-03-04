import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/tobeto_news.dart';
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
  late int _currentIndex;
  late int itemCount;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  void _startAnimation(BuildContext context, int itemCount) {
    Future.delayed(const Duration(seconds: 5), () {
      if (context.mounted) {
        setState(() {
          _currentIndex = ((_currentIndex + 1) % itemCount);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    itemCount = tobetoNews.length;
    _startAnimation(context, itemCount);
    return AspectRatio(
      aspectRatio: 2.5 / 1,
      child: MainTobetoCard(
        tobetoNewsModel: tobetoNews[_currentIndex],
      ),
    );
  }
}
