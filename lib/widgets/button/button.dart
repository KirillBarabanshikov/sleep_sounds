import 'package:flutter/material.dart';

enum Variant { primary, secondary }

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.variant = Variant.primary,
    this.isExpended = true,
  });

  final String text;
  final void Function() onPressed;
  final Widget? icon;
  final Variant variant;
  final bool isExpended;

  ButtonStyle? _getCurrentStyle(ThemeData theme) {
    switch (variant) {
      case Variant.primary:
        return ElevatedButton.styleFrom(backgroundColor: theme.colorScheme.primary);

      case Variant.secondary:
        return ElevatedButton.styleFrom(backgroundColor: theme.colorScheme.secondary);

      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentStyle = _getCurrentStyle(theme);

    return Expanded(
      flex: isExpended ? 1 : 0,
      child: ElevatedButton(
        style: currentStyle?.copyWith(padding: const MaterialStatePropertyAll(EdgeInsets.all(8))),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[icon!, const SizedBox(width: 4)],
            Text(text),
          ],
        ),
      ),
    );
  }
}
