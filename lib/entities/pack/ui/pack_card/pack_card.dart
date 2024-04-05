import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../model/model.dart';

class PackCard extends StatelessWidget {
  const PackCard({
    super.key,
    required this.pack,
  });

  final PackModel pack;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => context.push('/pack-details', extra: pack),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 164,
                  height: 164,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(image: NetworkImage(pack.imageCover)),
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 8,
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: const Icon(Icons.play_arrow),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(pack.name, style: theme.textTheme.headlineLarge),
            Text(
              '${pack.songs.length} Songs • ${pack.category}',
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
