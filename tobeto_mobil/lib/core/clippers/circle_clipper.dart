import 'package:flutter/material.dart';

class CircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = size.width / 2;
    var path = Path()..addOval(Rect.fromCircle(center: size.center(Offset.zero), radius: radius));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}