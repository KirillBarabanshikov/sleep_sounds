import 'package:flutter/material.dart';

class ComposerPage extends StatelessWidget {
  const ComposerPage({super.key});

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
            //
            const SliverToBoxAdapter(child: SizedBox(height: 25)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text('Child', style: theme.textTheme.headlineLarge),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text('Quickly stabilize your baby’s emotions', style: theme.textTheme.labelLarge),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 14)),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 125,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 16);
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      height: 125,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.secondary,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          const Expanded(child: Icon(Icons.add, size: 28)),
                          Container(
                            height: 32,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.tertiary,
                              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(16)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text('Female voice', style: theme.textTheme.labelMedium)],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            //
            const SliverToBoxAdapter(child: SizedBox(height: 25)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text('Child', style: theme.textTheme.headlineLarge),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text('Quickly stabilize your baby’s emotions', style: theme.textTheme.labelLarge),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 14)),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 125,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 16);
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      height: 125,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.secondary,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          const Expanded(child: Icon(Icons.add, size: 28)),
                          Container(
                            height: 32,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.tertiary,
                              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(16)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text('Female voice', style: theme.textTheme.labelMedium)],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            //
            const SliverToBoxAdapter(child: SizedBox(height: 25)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text('Child', style: theme.textTheme.headlineLarge),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text('Quickly stabilize your baby’s emotions', style: theme.textTheme.labelLarge),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 14)),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 125,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 16);
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      height: 125,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.secondary,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          const Expanded(child: Icon(Icons.add, size: 28)),
                          Container(
                            height: 32,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.tertiary,
                              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(16)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text('Female voice', style: theme.textTheme.labelMedium)],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
