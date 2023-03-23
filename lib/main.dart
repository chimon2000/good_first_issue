import 'package:colorize_lumberdash/colorize_lumberdash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:good_first_issue/ui/pages/home.dart';

import 'package:lumberdash/lumberdash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  putLumberdashToWork(withClients: [ColorizeLumberdash()]);

  runApp(const ProviderScope(child: GoodFirstIssueApp()));
}

class GoodFirstIssueApp extends ConsumerWidget {
  const GoodFirstIssueApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Good First Issue',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomePage(),
    );
  }
}
