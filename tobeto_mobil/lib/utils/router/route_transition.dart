import 'package:flutter/material.dart';

//Kullanimda Degil
class RouteTransition {
  RouteTransition._();

  static PageRouteBuilder customTransitionBuilder({required Widget child}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final opacity = animation.drive(
          Tween<double>(begin: 0.0, end: 1.0).chain(
            CurveTween(curve: Curves.easeInOutQuart),
          ),
        );

        return FadeTransition(
          opacity: opacity,
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 800),
    );
  }

  static PageRouteBuilder fadeTransitionBuilder({required Widget child}) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final opacity = animation.drive(Tween<double>(begin: 0, end: 1));

          return FadeTransition(opacity: opacity, child: child);
        });
  }

  static PageRouteBuilder rotationTransitionBuilder({required Widget child}) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final rotation = animation.drive(Tween<double>(begin: 0, end: 1));

          return RotationTransition(turns: rotation, child: child);
        });
  }

  static PageRouteBuilder scaleTransitionBuilder({required Widget child}) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final scale = animation.drive(Tween<double>(begin: 0, end: 1));

          return ScaleTransition(scale: scale, child: child);
        });
  }

  static PageRouteBuilder scaleRotationTransitionBuilder(
      {required Widget child}) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final scale = animation.drive(Tween<double>(begin: 0, end: 1));

          return ScaleTransition(
              scale: scale,
              child: RotationTransition(
                turns: scale,
                child: child,
              ));
        });
  }

  static PageRouteBuilder slideTransitionBuilder({required Widget child}) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final position = animation.drive(Tween<Offset>(
              begin: const Offset(-1, 1), end: const Offset(0, 0)));

          return SlideTransition(position: position, child: child);
        });

    // left to right: begin: Offset(-1,0) end: Offset(0,0)
    // right to left: begin: Offset(1,0) end: Offset(0,0)
    // bottom to top: begin: Offset(0,1) end: Offset(0,0)
    // top to bottmo: begin: Offset(0,-1) end: Offset(0,0)
    // from top right corner: begin: Offset(1,-1) end: Offset(0,0)
    // from bottom right corner: begin: Offset(1,1) end: Offset(0,0)
    // from top left corner: begin: Offset(-1,-1) end: Offset(0,0)
    // from bottom left corner: begin: Offset(-1,1) end: Offset(0,0)
  }
}
