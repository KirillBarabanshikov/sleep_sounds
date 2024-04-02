import 'package:go_router/go_router.dart';

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
  ],
);
