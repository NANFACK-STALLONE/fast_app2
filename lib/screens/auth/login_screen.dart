import 'package:flutter/material.dart';

import '../../animations/fade_animation.dart';
import '../../widgets/auth/login_form.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            FadeAnimation(
              delay: 0.2,
              child: Text(
                'Welcome Back!',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            FadeAnimation(
              delay: 0.4,
              child: const LoginForm(),
            ),
            const SizedBox(height: 20),
            FadeAnimation(
              delay: 0.6,
              child: TextButton(
                onPressed: () {
                  // TODO: Implement forgot password
                },
                child: const Text('Forgot Password?'),
              ),
            ),
            FadeAnimation(
              delay: 0.8,
              child: TextButton(
                onPressed: () {
                  // TODO: Implement registration
                },
                child: const Text('Create New Account'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}