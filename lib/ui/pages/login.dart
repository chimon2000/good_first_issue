import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Future<void> _signInWithGitHub() async {
    await Supabase.instance.client.auth.signInWithOAuth(
      OAuthProvider.github,
      redirectTo: kIsWeb ? null : 'app.goodfirstissue.app://callback',
      authScreenLaunchMode:
          kIsWeb ? LaunchMode.platformDefault : LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.bug_report,
                size: 80,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(height: 24),
              Text(
                'Good First Issue',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                'Find good first issues on GitHub',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey,
                    ),
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _signInWithGitHub,
                  icon: const Icon(Icons.login),
                  label: const Text('Sign in with GitHub'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: const Color(0xFF24292e),
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

