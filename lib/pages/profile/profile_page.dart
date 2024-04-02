import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 44),
          child: Column(
            children: [
              Text('Profile', style: theme.textTheme.titleLarge),
            ],
          ),
        ),
      ),
    );
  }
}
