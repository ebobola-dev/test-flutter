import 'package:flutter/material.dart';

animatedSwitchPage(
  BuildContext context,
  Widget page,
) {
  final route = PageRouteBuilder(
    transitionDuration: const Duration(milliseconds: 500),
    reverseTransitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (context, _, __) => page,
    transitionsBuilder: (context, animation, _, child) {
      final tween = Tween(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).chain(CurveTween(curve: Curves.ease));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
  Navigator.of(context).push(route);
}
