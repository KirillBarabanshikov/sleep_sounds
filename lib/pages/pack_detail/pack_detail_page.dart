import 'package:flutter/material.dart';

import '../../entities/pack/pack.dart';
import '../../widgets/widgets.dart';

class PackDetailPage extends StatelessWidget {
  const PackDetailPage({
    super.key,
    required this.pack,
  });

  final PackModel pack;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.network(
              pack.imageDetail,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 272,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Icon(Icons.star),
                    const Text('Mood', style: TextStyle(fontSize: 13, color: Colors.white)),
                    Text('Lighthearted', style: theme.textTheme.titleMedium),
                  ],
                ),
                const SizedBox(width: 16),
                Column(
                  children: [
                    const Icon(Icons.star),
                    const Text('Dreams', style: TextStyle(fontSize: 13, color: Colors.white)),
                    Text('Daydreams', style: theme.textTheme.titleMedium),
                  ],
                ),
              ],
            ),
          ),
          ExhibitionBottomSheet(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(pack.name, style: theme.textTheme.titleLarge),
                Text('${pack.songs.length} Songs • ${pack.category}', style: theme.textTheme.bodyMedium),
                const SizedBox(height: 24),
                const Divider(height: 1),
                const SizedBox(height: 24),
                Row(
                  children: [
                    AppButton(
                      text: 'Play',
                      icon: const Icon(Icons.play_arrow),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 15),
                    AppButton(
                      text: 'Favorite',
                      icon: const Icon(Icons.star),
                      variant: Variant.secondary,
                      onPressed: () {},
                    )
                  ],
                ),
                const SizedBox(height: 24),
                const Divider(height: 1),
              ],
            ),
          ),
          const Positioned(
            top: 0,
            left: 0,
            child: AppBackButton(text: 'Discover'),
          ),
        ],
      ),
    );
  }
}
