import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                child: Text('Profile', style: theme.textTheme.titleLarge),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(top: 25, left: 16, right: 16, bottom: 32),
                padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 40),
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondary,
                  border: Border.all(width: 1, color: theme.colorScheme.tertiary),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/login_as_user.svg',
                      colorFilter: ColorFilter.mode(theme.colorScheme.background, BlendMode.srcIn),
                    ),
                    Text('Authorization', style: theme.textTheme.titleSmall),
                    const Text('In order to access the library of favorite packs of sounds, log in with Apple ID', textAlign: TextAlign.center),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromHeight(50),
                        backgroundColor: theme.colorScheme.background,
                      ),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.touch_app),
                          SizedBox(width: 8),
                          Text('Login'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
