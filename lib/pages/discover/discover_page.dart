import 'package:flutter/material.dart';

import '../../entities/pack/pack.dart';

const data = [
  PackModel(
    name: 'Guitar camp',
    description:
        'An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid.',
    imageCover: 'https://live.staticflickr.com/65535/53627277211_e5a73a4c6e_n.jpg',
    imageDetail: 'https://live.staticflickr.com/65535/53627477433_9c5a1feea2_c.jpg',
    category: 'Instrumental',
    songs: [
      SongModel(
        name: 'The Guitars',
        song: 'song',
      ),
      SongModel(
        name: 'Lost Without You',
        song: 'song',
      ),
      SongModel(
        name: 'City Lights',
        song: 'song',
      ),
      SongModel(
        name: 'Romantic',
        song: 'song',
      ),
    ],
  ),
  PackModel(
    name: 'Chill-hop',
    description:
        'An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid.',
    imageCover: 'https://live.staticflickr.com/65535/53627721665_91d5b2fe60_n.jpg',
    imageDetail: 'https://live.staticflickr.com/65535/53627477428_feba79a3bd_c.jpg',
    category: 'Instrumental',
    songs: [
      SongModel(
        name: 'The Guitars',
        song: 'song',
      ),
      SongModel(
        name: 'Lost Without You',
        song: 'song',
      ),
      SongModel(
        name: 'City Lights',
        song: 'song',
      ),
      SongModel(
        name: 'Romantic',
        song: 'song',
      ),
    ],
  ),
  PackModel(
    name: 'Summer night',
    description:
        'An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid.',
    imageCover: 'https://live.staticflickr.com/65535/53627721700_df7a00277b_n.jpg',
    imageDetail: 'https://live.staticflickr.com/65535/53627721755_2f3709679b_c.jpg',
    category: 'Instrumental',
    songs: [
      SongModel(
        name: 'The Guitars',
        song: 'song',
      ),
      SongModel(
        name: 'Lost Without You',
        song: 'song',
      ),
      SongModel(
        name: 'City Lights',
        song: 'song',
      ),
      SongModel(
        name: 'Romantic',
        song: 'song',
      ),
    ],
  ),
  PackModel(
    name: 'Awakening',
    description:
        'An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid.',
    imageCover: 'https://live.staticflickr.com/65535/53627277251_ea092ab8a2_n.jpg',
    imageDetail: 'https://live.staticflickr.com/65535/53627606494_1aa89347bf_c.jpg',
    category: 'Instrumental',
    songs: [
      SongModel(
        name: 'The Guitars',
        song: 'song',
      ),
      SongModel(
        name: 'Lost Without You',
        song: 'song',
      ),
      SongModel(
        name: 'City Lights',
        song: 'song',
      ),
      SongModel(
        name: 'Romantic',
        song: 'song',
      ),
    ],
  ),
  PackModel(
    name: 'Chill-hop',
    description:
        'An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid.',
    imageCover: 'https://live.staticflickr.com/65535/53627515633_8c140691fa_n.jpg',
    imageDetail: 'https://live.staticflickr.com/65535/53627760345_4d81e43089_c.jpg',
    category: 'Instrumental',
    songs: [
      SongModel(
        name: 'The Guitars',
        song: 'song',
      ),
      SongModel(
        name: 'Lost Without You',
        song: 'song',
      ),
      SongModel(
        name: 'City Lights',
        song: 'song',
      ),
      SongModel(
        name: 'Romantic',
        song: 'song',
      ),
    ],
  ),
  PackModel(
    name: 'Lullaby',
    description:
        'An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid.',
    imageCover: 'https://live.staticflickr.com/65535/53627515643_b3b4eeebb0_n.jpg',
    imageDetail: 'https://live.staticflickr.com/65535/53627645099_433893830f_c.jpg',
    category: 'Instrumental',
    songs: [
      SongModel(
        name: 'The Guitars',
        song: 'song',
      ),
      SongModel(
        name: 'Lost Without You',
        song: 'song',
      ),
      SongModel(
        name: 'City Lights',
        song: 'song',
      ),
      SongModel(
        name: 'Romantic',
        song: 'song',
      ),
    ],
  ),
];

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: SizedBox(height: 44)),
              SliverToBoxAdapter(child: Text('Discover', style: theme.textTheme.titleLarge)),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverGrid.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  mainAxisExtent: 212,
                ),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return PackCard(pack: data[index]);
                },
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
