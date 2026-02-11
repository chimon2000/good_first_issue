import 'package:colorize_lumberdash/colorize_lumberdash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:good_first_issue/app_providers.dart';
import 'package:good_first_issue/ui/pages/home.dart';
import 'package:good_first_issue/ui/pages/login.dart';
import 'package:lumberdash/lumberdash.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  putLumberdashToWork(withClients: [ColorizeLumberdash()]);

  const supabaseAnonKey = String.fromEnvironment('SUPABASE_ANON_KEY');

  await Supabase.initialize(
    url: 'https://ymrlelwcixhztnryludp.supabase.co',
    anonKey: supabaseAnonKey,
  );

  runApp(const ProviderScope(child: GoodFirstIssueApp()));
}

class GoodFirstIssueApp extends ConsumerWidget {
  const GoodFirstIssueApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);

    return MaterialApp(
      title: 'Good First Issue',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: authState.when(
        data: (state) {
          if (state.session != null) {
            return const HomePage();
          }
          return const LoginPage();
        },
        loading: () => const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        ),
        error: (_, __) => const LoginPage(),
      ),
    );
  }
}
