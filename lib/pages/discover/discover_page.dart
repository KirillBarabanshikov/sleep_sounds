import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../entities/pack/pack.dart';
import '../../widgets/widgets.dart';

const List<Map<String, dynamic>> _filters = [
  {'icon': 'assets/icons/keypad.svg', 'title': 'All'},
  {'icon': 'assets/icons/meditation.svg', 'title': 'Ambient'},
  {'icon': 'assets/icons/infant.svg', 'title': 'For Kids'},
];

class DiscoverPage extends ConsumerStatefulWidget {
  const DiscoverPage({super.key});

  @override
  ConsumerState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends ConsumerState<DiscoverPage> {
  String selectedFilter = 'All';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final packList = ref.watch(packListProvider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: SizedBox(height: 44)),
              SliverToBoxAdapter(child: Text('Discover', style: theme.textTheme.titleLarge)),
              const SliverToBoxAdapter(child: SizedBox(height: 8)),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 54,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    children: _filters.map((e) {
                      return Row(
                        children: [
                          AppButton(
                            padding: const EdgeInsets.only(
                              top: 8,
                              bottom: 8,
                              left: 8,
                              right: 16,
                            ),
                            variant: selectedFilter == e['title'] ? Variant.primary : Variant.secondary,
                            icon: SvgPicture.asset(
                              e['icon'],
                              width: 24,
                              height: 24,
                              colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                            ),
                            text: e['title'],
                            onPressed: () => setState(() => selectedFilter = e['title']),
                          ),
                          const SizedBox(width: 16),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverGrid.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  mainAxisExtent: 212,
                ),
                itemCount: packList.length,
                itemBuilder: (context, index) {
                  final pack = packList[index];
                  return PackCard(pack: pack);
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
