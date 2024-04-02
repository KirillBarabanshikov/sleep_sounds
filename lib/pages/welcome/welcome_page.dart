import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _screensData = [
  {
    'image': 'assets/images/welcome/screen-1.png',
    'title': 'Exclusive sounds',
    'subtitle': 'We have an author\'s library of sounds that you will not find anywhere else',
  },
  {
    'image': 'assets/images/welcome/screen-2.png',
    'title': 'Relax sleep sounds',
    'subtitle': 'Our sounds will help to relax and improve your sleep health',
  },
  {
    'image': 'assets/images/welcome/screen-3.png',
    'title': 'Story for kids',
    'subtitle': 'Famous fairy tales with soothing sounds will help your children fall asleep faster',
  }
];

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void _onNextPage() {
    if (_currentPage == _screensData.length - 1) {
      return context.go('/discover');
    }

    _pageController.nextPage(
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
    );
    setState(() => _currentPage++);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 67, bottom: 53),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _screensData.length,
                itemBuilder: (context, index) {
                  final screenData = _screensData[index];

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        screenData['image']!,
                        width: 290,
                        height: 230,
                      ),
                      const SizedBox(height: 50),
                      Text(
                        screenData['title']!,
                        style: theme.textTheme.titleLarge,
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Text(
                          screenData['subtitle']!,
                          style: theme.textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 64),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_screensData.length, (index) {
                final isCurrent = _currentPage == index;

                return Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                  decoration: BoxDecoration(
                    color: isCurrent ? theme.colorScheme.primary : theme.colorScheme.secondary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              }),
            ),
            const SizedBox(height: 24),
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ElevatedButton(
                onPressed: _onNextPage,
                child: Text(
                  _currentPage == _screensData.length - 1 ? 'Start' : 'Next',
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 45,
              child: GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container();
                  },
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.touch_app,
                      size: 22,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Login',
                      style: theme.textTheme.titleSmall,
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
