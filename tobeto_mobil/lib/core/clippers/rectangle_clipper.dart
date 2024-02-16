import 'package:flutter/material.dart';

class RectangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()..addRect(Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

