import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../entities/pack/pack.dart';
import '../../pages/pages.dart';
import '../layouts/layouts.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const WelcomePage(),
    ),
    ShellRoute(
      builder: (context, state, child) => BaseLayout(currentPath: state.uri.path, child: child),
      routes: [
        GoRoute(
          path: '/discover',
          builder: (context, state) => const DiscoverPage(),
        ),
        GoRoute(
          path: '/composer',
          builder: (context, state) => const ComposerPage(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfilePage(),
        ),
      ],
    ),
    GoRoute(
      path: '/pack-details',
      builder: (context, state) {
        final PackModel pack = state.extra as PackModel;
        return PackDetailPage(pack: pack);
      },
    ),
    GoRoute(
      path: '/settings-theme',
      builder: (context, state) {
        return const SettingsLayout(title: 'Theme', child: Scaffold());
      },
    )
  ],
);
