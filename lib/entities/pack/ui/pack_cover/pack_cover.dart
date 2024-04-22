import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PackCover extends StatelessWidget {
  const PackCover({
    super.key,
    required this.imageUrl,
    this.borderRadius = 16,
    this.size = 164,
  });

  final String imageUrl;
  final double borderRadius;
  final double size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: size,
      height: size,
      imageBuilder: (context, imageProvider) {
        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(width: 1, color: theme.colorScheme.secondary),
            image: DecorationImage(image: imageProvider),
          ),
        );
      },
    );
  }
}
