import 'package:flutter/material.dart';

class NavigatorUtils {
  static void pushWithTransition(
    BuildContext context,
    Widget page, {
    Offset begin = const Offset(1.0, 0.0), // Default: Slide from right
    Curve curve = Curves.easeInOut, // Default animation curve
    Duration duration = const Duration(milliseconds: 600), // Default transition duration
  }) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionDuration: duration, // Set custom duration
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween(begin: begin, end: Offset.zero)
              .chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  }
}
