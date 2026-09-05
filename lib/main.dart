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

  const supabaseKey = String.fromEnvironment('SUPABASE_KEY');

  if (supabaseKey.isEmpty) {
    throw StateError(
      'SUPABASE_KEY is not set. Pass it via --dart-define=SUPABASE_KEY=<your Supabase anon key>.',
    );
  }

  await Supabase.initialize(
    url: 'https://ymrlelwcixhztnryludp.supabase.co',
    publishableKey: supabaseKey,
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
      theme: ThemeData(colorSchemeSeed: Colors.blueGrey),
      home: authState.when(
        data: (state) {
          if (state.session != null) {
            return const HomePage();
          }
          return const LoginPage();
        },
        loading: () =>
            const Scaffold(body: Center(child: CircularProgressIndicator())),
        error: (_, _) => const LoginPage(),
      ),
    );
  }
}
