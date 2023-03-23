import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:good_first_issue/app_providers.dart';

import 'package:good_first_issue/ui/pages/about.dart';

class MorePage extends ConsumerWidget {
  const MorePage({super.key});

  static Route<void> route() => MaterialPageRoute(
        builder: (context) => const MorePage(),
        fullscreenDialog: true,
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isIOS = Theme.of(context).platform == TargetPlatform.iOS;
    String platformStore = isIOS ? 'App Store' : 'Google Play Store';

    return Scaffold(
      appBar: AppBar(
        title: const Text('More'),
      ),
      body: ListView(
        children: <Widget>[
          if (!kIsWeb)
            ListTile(
              leading: const Icon(Icons.star),
              title: Text('Rate on $platformStore'),
              onTap: () {
                ref.read(reviewServiceProvider).launchReview();
              },
            ),
          ListTile(
            leading: const Icon(Icons.bug_report),
            title: const Text('Issue tracker'),
            subtitle: const Text('Report issue or suggest features'),
            onTap: () async {
              const url =
                  "https://github.com/chimon2000/good_first_issue/issues";

              await ref.read(linkServiceProvider).launchLink(url);
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('About'),
            subtitle: const Text('Contributors and support'),
            onTap: () {
              Navigator.of(context).pushReplacement(AboutPage.route());
            },
          ),
        ],
      ),
    );
  }
}
