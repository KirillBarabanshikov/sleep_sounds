import 'package:flutter/material.dart';

import '../../entities/sound/sound.dart';

const List<Map<String, dynamic>> _data = [
  {
    'title': 'Child',
    'subtitle': 'Quickly stabilize your baby’s emotions',
    'sounds': [
      SoundModel(iconName: 'assets/icons/girl.svg', label: 'Female voice'),
      SoundModel(iconName: 'assets/icons/ultrasound.svg', label: 'White noize'),
      SoundModel(iconName: 'assets/icons/lullaby.svg', label: 'Lullaby'),
    ],
    'activeColor': Color.fromRGBO(72, 112, 255, 1),
  },
  {
    'title': 'Nature',
    'subtitle': 'It will allow you to merge with nature',
    'sounds': [
      SoundModel(iconName: 'assets/icons/rainwater_catchment.svg', label: 'Rain'),
      SoundModel(iconName: 'assets/icons/forest.svg', label: 'Forest'),
      SoundModel(iconName: 'assets/icons/wave_lines.svg', label: 'Ocean'),
      SoundModel(iconName: 'assets/icons/musical.svg', label: 'Musical'),
    ],
    'activeColor': Color.fromRGBO(0, 217, 113, 1),
  },
  {
    'title': 'Animals',
    'subtitle': 'Animal voices will improve your sleep',
    'sounds': [
      SoundModel(iconName: 'assets/icons/bird.svg', label: 'Birds'),
      SoundModel(iconName: 'assets/icons/cat.svg', label: 'Cats'),
      SoundModel(iconName: 'assets/icons/frog.svg', label: 'Frogs'),
    ],
    'activeColor': Color.fromRGBO(255, 156, 65, 1),
  }
];

class ComposerPage extends StatefulWidget {
  const ComposerPage({super.key});

  @override
  State<ComposerPage> createState() => _ComposerPageState();
}

class _ComposerPageState extends State<ComposerPage> {
  final List<SoundModel> selectedSounds = [];

  void toggleSound(SoundModel sound) {
    if (selectedSounds.contains(sound)) {
      selectedSounds.remove(sound);
    } else {
      selectedSounds.add(sound);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 44)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text('Composer', style: theme.textTheme.titleLarge),
              ),
            ),
            ..._data.map((e) {
              return SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(e['title'] as String, style: theme.textTheme.headlineLarge),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(e['subtitle'] as String, style: theme.textTheme.labelLarge),
                    ),
                    const SizedBox(height: 14),
                    SizedBox(
                      height: 125,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: (e['sounds'] as List).length,
                        separatorBuilder: (context, index) {
                          return const SizedBox(width: 16);
                        },
                        itemBuilder: (context, index) {
                          final sound = e['sounds'][index] as SoundModel;

                          return SoundCard(
                            sound: sound,
                            activeColor: selectedSounds.contains(sound) ? e['activeColor'] : null,
                            onTap: () => toggleSound(sound),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
