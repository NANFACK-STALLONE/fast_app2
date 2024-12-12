import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AnimationProps { opacity, offset }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeAnimation({
    super.key,
    required this.delay,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..tween(
        AnimationProps.opacity,
        Tween<double>(begin: 0.0, end: 1.0),
        duration: const Duration(milliseconds: 500),
      )
      ..tween(
        AnimationProps.offset,
        Tween<Offset>(
          begin: const Offset(0, 30),
          end: const Offset(0, 0),
        ),
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );

    return PlayAnimationBuilder<Movie>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, value, child) => Opacity(
        opacity: value.get(AnimationProps.opacity),
        child: Transform.translate(
          offset: value.get(AnimationProps.offset),
          child: child,
        ),
      ),
    );
  }
}