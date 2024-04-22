import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/model.dart';

part 'provider.g.dart';

@riverpod
class PackList extends _$PackList {
  @override
  List<PackModel> build() {
    return const [
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
        isFavorite: true,
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
        isFavorite: false,
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
        isFavorite: false,
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
        isFavorite: false,
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
        isFavorite: false,
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
        isFavorite: false,
      ),
    ];
  }
}
