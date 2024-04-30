import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

const _data = [
  [
    _SettingItem(
      name: 'premium',
      iconName: 'assets/icons/crown.svg',
      color: Color.fromRGBO(255, 156, 65, 1),
      title: 'Get premium',
    )
  ],
  [
    _SettingItem(
      name: 'favorite',
      iconName: 'assets/icons/star.svg',
      color: Color.fromRGBO(72, 112, 255, 1),
      title: 'Favorite',
    ),
    _SettingItem(
      name: 'theme',
      iconName: 'assets/icons/moon.svg',
      color: Color.fromRGBO(72, 112, 255, 1),
      title: 'Theme',
    )
  ],
  [
    _SettingItem(
      name: 'policy',
      iconName: 'assets/icons/document.svg',
      color: Color.fromRGBO(0, 217, 113, 1),
      title: 'Private policy',
    ),
    _SettingItem(
      name: 'agreement',
      iconName: 'assets/icons/documents.svg',
      color: Color.fromRGBO(0, 217, 113, 1),
      title: 'License agreement',
    ),
  ],
  [
    _SettingItem(
      name: 'rate',
      iconName: 'assets/icons/drawing_compass.svg',
      color: Color.fromRGBO(255, 45, 85, 1),
      title: 'Rate us',
    ),
    _SettingItem(
      name: 'feedback',
      iconName: 'assets/icons/mailbox.svg',
      color: Color.fromRGBO(255, 45, 85, 1),
      title: 'Send Feedback',
    ),
  ],
];

class _SettingItem {
  const _SettingItem({
    required this.name,
    required this.iconName,
    required this.color,
    required this.title,
  });

  final String name;
  final String iconName;
  final Color color;
  final String title;
}

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
                      colorFilter: ColorFilter.mode(theme.colorScheme.onBackground, BlendMode.srcIn),
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
            SliverList.separated(
              itemCount: _data.length,
              separatorBuilder: (context, index) {
                return const SizedBox(height: 32);
              },
              itemBuilder: (context, index) {
                final settingsGroup = _data[index];

                return Container(
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        width: 1,
                        color: theme.colorScheme.secondary,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (var settingsItem in settingsGroup)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: Container(
                                padding: const EdgeInsets.all(2.8),
                                decoration: BoxDecoration(
                                  color: settingsItem.color,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: SvgPicture.asset(
                                  settingsItem.iconName,
                                  colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                ),
                              ),
                              title: Text(
                                settingsItem.title,
                                style: theme.textTheme.headlineLarge?.copyWith(
                                  color: settingsItem.name == 'premium' ? settingsItem.color : null,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 15,
                                color: settingsItem.name == 'premium' ? settingsItem.color : theme.colorScheme.tertiary,
                              ),
                              horizontalTitleGap: 16,
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                              visualDensity: const VisualDensity(vertical: -3),
                              onTap: () => context.push('/settings-${settingsItem.name}'),
                            ),
                            if (settingsGroup.last != settingsItem) const Divider(height: 1, indent: 16),
                          ],
                        ),
                    ],
                  ),
                );
              },
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 32)),
          ],
        ),
      ),
    );
  }
}
