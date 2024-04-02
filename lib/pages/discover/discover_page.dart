import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 44),
          child: Column(
            children: [
              Text('Discover', style: theme.textTheme.titleLarge),
            ],
          ),
        ),
      ),
    );
  }
}
