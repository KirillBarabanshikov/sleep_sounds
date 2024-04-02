import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

const List<Map<String, String>> _navItems = [
  {
    'icon': 'assets/icons/moon.svg',
    'label': 'Discover',
    'path': '/discover',
  },
  {
    'icon': 'assets/icons/musical_notes.svg',
    'label': 'Composer',
    'path': '/composer',
  },
  {
    'icon': 'assets/icons/user_male.svg',
    'label': 'Profile',
    'path': '/profile',
  }
];

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.currentPath,
  });

  final String currentPath;

  @override
  Widget build(BuildContext context) {
    final bottomNavBarTheme = Theme.of(context).bottomNavigationBarTheme;
    final currentIndex = _navItems.indexWhere((item) => item['path'] == currentPath);

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => context.go(_navItems[index]['path']!),
      items: _navItems.map((item) {
        final isCurrent = item['path'] == currentPath;

        return BottomNavigationBarItem(
            icon: SvgPicture.asset(
              item['icon']!,
              colorFilter: ColorFilter.mode(
                isCurrent ? bottomNavBarTheme.selectedItemColor! : bottomNavBarTheme.unselectedItemColor!,
                BlendMode.srcIn,
              ),
            ),
            label: item['label']);
      }).toList(),
    );
  }
}
