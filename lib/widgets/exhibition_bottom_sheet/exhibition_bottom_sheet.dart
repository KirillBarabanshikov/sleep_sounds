import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';

class ExhibitionBottomSheet extends StatefulWidget {
  const ExhibitionBottomSheet({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<ExhibitionBottomSheet> createState() => _ExhibitionBottomSheetState();
}

class _ExhibitionBottomSheetState extends State<ExhibitionBottomSheet> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  double get _maxHeight => MediaQuery.of(context).size.height - 44;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double? _lerp(double min, double max) => lerpDouble(min, max, _controller.value);

  void _handleDragUpdate(DragUpdateDetails details) {
    _controller.value -= details.primaryDelta! / _maxHeight;
  }

  void _handleDragEnd(DragEndDetails details) {
    if (_controller.isAnimating || _controller.status == AnimationStatus.completed) return;

    final double flingVelocity = details.velocity.pixelsPerSecond.dy / _maxHeight;
    if (flingVelocity < 0.0) {
      _controller.fling(velocity: math.max(2.0, -flingVelocity));
    } else if (flingVelocity > 0.0) {
      _controller.fling(velocity: math.min(-2.0, -flingVelocity));
    } else {
      _controller.fling(velocity: _controller.value < 0.5 ? -2.0 : 2.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Positioned(
          height: _lerp(194, _maxHeight),
          left: 0,
          right: 0,
          bottom: 0,
          child: GestureDetector(
            onVerticalDragUpdate: _handleDragUpdate,
            onVerticalDragEnd: _handleDragEnd,
            child: SafeArea(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: theme.colorScheme.background,
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 8, bottom: 12),
                        width: 39,
                        height: 4,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.tertiary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    widget.child,
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
