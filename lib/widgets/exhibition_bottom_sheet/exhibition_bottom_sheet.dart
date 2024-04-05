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
  final _scrollController = ScrollController();
  bool _isOpen = false;

  double get _maxHeight => MediaQuery.of(context).size.height - 70;

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
      _isOpen = true;
      _controller.fling(velocity: math.max(2.0, -flingVelocity));
    } else if (flingVelocity > 0.0) {
      _scrollController.animateTo(0, duration: const Duration(milliseconds: 500), curve: Curves.bounceIn);
      _isOpen = false;
      _controller.fling(velocity: math.min(-2.0, -flingVelocity));
    } else {
      _isOpen = _controller.value < 0.5 ? false : true;
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
                  Expanded(
                    child: CustomScrollView(
                      controller: _scrollController,
                      physics: _isOpen ? null : const NeverScrollableScrollPhysics(),
                      slivers: [
                        SliverToBoxAdapter(child: widget.child),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
