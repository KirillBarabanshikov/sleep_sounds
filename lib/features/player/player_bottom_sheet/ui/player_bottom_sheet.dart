import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../entities/pack/pack.dart';
import '../../../../shared/ui/ui.dart';

class PlayerBottomSheet extends StatelessWidget {
  const PlayerBottomSheet({
    super.key,
    required this.pack,
    required this.song,
  });

  final PackModel pack;
  final SongModel song;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBottomSheet(
      child: Padding(
        padding: const EdgeInsets.only(top: 43, bottom: 98),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              'assets/icons/popover.svg',
              colorFilter: ColorFilter.mode(
                theme.colorScheme.tertiary,
                BlendMode.srcIn,
              ),
            ),
            Column(
              children: [
                PackCover(imageUrl: pack.imageCover, borderRadius: 24),
                const SizedBox(height: 24),
                Text(pack.name, style: theme.textTheme.bodyLarge),
                const SizedBox(height: 2),
                Text(song.name, style: theme.textTheme.titleLarge),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.zero,
                    child: Slider(
                      value: 0.5,
                      min: 0,
                      max: 1,
                      onChanged: (value) {},
                      secondaryTrackValue: 0.6,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '00:10',
                        style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white),
                      ),
                      Text(
                        '07:10',
                        style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.fast_rewind,
                    size: 36,
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(18),
                ),
                const SizedBox(width: 32),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 36,
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(18),
                ),
                const SizedBox(width: 32),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.fast_forward,
                    size: 36,
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
