import 'dart:math';

import 'package:flutter/material.dart';

class BottomArrowIndicator extends StatefulWidget {
  const BottomArrowIndicator({super.key});

  @override
  State<BottomArrowIndicator> createState() => _BottomArrowIndicatorState();
}

class _BottomArrowIndicatorState extends State<BottomArrowIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _sineAnimationController;
  late Animation<double> _sineAnimation;

  @override
  void initState() {
    super.initState();

    _sineAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )
      ..forward()
      ..repeat(reverse: true);
    _sineAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _sineAnimationController, curve: Curves.linear),
    );
  }

  @override
  void dispose() {
    _sineAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _sineAnimation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, sin(_sineAnimation.value * pi) * 10),
          child: const RotatedBox(
            quarterTurns: 1,
            child: Text(
              '→',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }
}
