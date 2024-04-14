import 'package:flutter/material.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Authorization',
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 24),
          Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Login'),
                  ),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 18),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Password'),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 55)),
                  onPressed: () {},
                  child: const Text('Auth'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
