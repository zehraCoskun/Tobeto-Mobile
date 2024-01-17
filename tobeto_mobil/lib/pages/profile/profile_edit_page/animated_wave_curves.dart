import 'package:flutter/material.dart';

class MyAnimatedWaveCurves extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAnimatedWavesCurves();
  }
}

class _MyAnimatedWavesCurves extends State<MyAnimatedWaveCurves> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(seconds: 4), vsync: this);
    _controller.repeat();
    animation = Tween<double>(begin: -600, end: 0).animate(_controller);
    animation.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Stack(children: [
          Positioned(
            bottom: 0,
            right: animation.value,
            child: ClipPath(
              clipper: MyWaveClipper(),
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  color: Colors.deepPurple,
                  width: 900,
                  height: 200,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: animation.value,
            child: ClipPath(
              clipper: MyWaveClipper(),
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  color: Colors.redAccent,
                  width: 900,
                  height: 200,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class MyWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, 40.0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 40.0);

    for (int i = 0; i < 10; i++) {
      if (i % 2 == 0) {
        path.quadraticBezierTo(
            size.width - (size.width / 16) - (i * size.width / 8), 0.0, size.width - ((i + 1) * size.width / 8), size.height - 160);
      } else {
        path.quadraticBezierTo(
            size.width - (size.width / 16) - (i * size.width / 8), size.height - 120, size.width - ((i + 1) * size.width / 8), size.height - 160);
      }
    }

    path.lineTo(0.0, 40.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}









