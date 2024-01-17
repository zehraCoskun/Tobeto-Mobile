import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/clippers/circle_clipper.dart';
import 'package:tobeto_mobil/core/clippers/login_clipper.dart';
import 'package:tobeto_mobil/core/clippers/rectangle_clipper.dart';
import 'package:tobeto_mobil/core/clippers/star_clipper.dart';
import 'package:tobeto_mobil/core/clippers/wave_clipper.dart';

//!denemeler yapmak amacıyla oluşturulmuş bir sayfadır

class AnimatedBackground extends StatefulWidget {
  const AnimatedBackground({super.key});

  @override
  _AnimatedBackgroundState createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(seconds: 3), vsync: this);
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 150,
                left: _controller.value * MediaQuery.of(context).size.width,
                child: ClipPath(
                  clipper: RectangleClipper(),
                  child: Container(
                    color: Colors.white.withOpacity(0.3),
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              Positioned(
                top: 300,
                left: _controller.value * MediaQuery.of(context).size.width,
                child: ClipPath(
                  clipper: StarClipper(),
                  child: Container(
                    color: Colors.white.withOpacity(0.3),
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              Positioned(
                top: 450,
                left: _controller.value * MediaQuery.of(context).size.width,
                child: ClipPath(
                  clipper: CircleClipper(),
                  child: Container(
                    color: Colors.white.withOpacity(0.3),
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              Positioned(
                top: 600,
                left: _controller.value * MediaQuery.of(context).size.width,
                child: ClipPath(
                  clipper: LoginClipper(),
                  child: Container(
                    color: Colors.white.withOpacity(0.3),
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              Positioned(
                top: 750,
                left: _controller.value * MediaQuery.of(context).size.width,
                child: ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    color: Colors.white.withOpacity(0.3),
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
