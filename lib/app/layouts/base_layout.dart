import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class BaseLayout extends StatelessWidget {
  const BaseLayout({
    super.key,
    required this.currentPath,
    required this.child,
  });

  final String currentPath;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: AppBottomNavigationBar(currentPath: currentPath),
    );
  }
}
