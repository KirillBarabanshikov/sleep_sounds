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
            slivers: [
              SliverToBoxAdapter(child: Text(pack.name, style: theme.textTheme.titleLarge)),
              SliverToBoxAdapter(child: Text('${pack.songs.length} Songs • ${pack.category}', style: theme.textTheme.bodyMedium)),
              const SliverToBoxAdapter(child: Divider()),
              SliverToBoxAdapter(
                child: Row(
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
              ),
              const SliverToBoxAdapter(child: Divider()),
              SliverToBoxAdapter(child: Text('About this pack', style: theme.textTheme.titleSmall)),
              SliverToBoxAdapter(child: Text(pack.description, style: theme.textTheme.bodyLarge)),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.only(top: 22, right: 16, bottom: 12, left: 16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: theme.colorScheme.secondary,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('LIST OF SONGS', style: theme.textTheme.bodySmall),
                      const SizedBox(height: 16),
                      ...pack.songs.map((e) {
                        final index = pack.songs.indexOf(e);
                        final number = '${index < 9 ? 0 : ''}${index + 1}';
                        return Column(
                          children: [
                            Row(
                              children: [
                                Text(number),
                                const SizedBox(width: 8),
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(32),
                                    color: theme.colorScheme.background,
                                  ),
                                  child: const Icon(Icons.play_arrow),
                                ),
                                const SizedBox(width: 16),
                                Text(e.name, style: theme.textTheme.headlineLarge),
                              ],
                            ),
                            if (e != pack.songs.last) Divider(height: 24, color: theme.colorScheme.tertiary),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(child: Text('Featured On', style: theme.textTheme.titleSmall)),
              const SliverToBoxAdapter(child: SizedBox(height: 12)),
              SliverGrid.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  mainAxisExtent: 212,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return PackCard(pack: pack);
                },
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
            ],
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
