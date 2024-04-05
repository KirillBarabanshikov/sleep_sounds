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
          ExhibitionBottomSheet(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(pack.name, style: theme.textTheme.titleLarge),
                Text('${pack.songs.length} Songs • ${pack.category}', style: theme.textTheme.bodyMedium),
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
