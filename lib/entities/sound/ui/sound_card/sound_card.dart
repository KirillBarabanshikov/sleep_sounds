import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../model/model.dart';

class SoundCard extends StatelessWidget {
  const SoundCard({
    super.key,
    required this.sound,
    this.activeColor,
    this.onTap,
  });

  final SoundModel sound;
  final Color? activeColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 125,
        decoration: BoxDecoration(
          color: activeColor ?? theme.colorScheme.secondary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Expanded(child: SvgPicture.asset(sound.iconName)),
            Container(
              height: 32,
              decoration: BoxDecoration(
                color: theme.colorScheme.tertiary,
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(16)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    sound.label,
                    style: theme.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
