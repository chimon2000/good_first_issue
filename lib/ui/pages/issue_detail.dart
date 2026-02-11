import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:good_first_issue/app_providers.dart';
import 'package:good_first_issue/models/issue.dart';

import 'package:html2md/html2md.dart' as html2md;
import 'package:flutter_markdown/flutter_markdown.dart';

class IssueDetailPage extends ConsumerWidget {
  static Route<dynamic> route(Issue issue) {
    return MaterialPageRoute(
      builder: (context) {
        return IssueDetailPage(issue: issue);
      },
    );
  }

  final Issue issue;

  const IssueDetailPage({super.key, required this.issue});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final buttonColor = Theme.of(context).colorScheme.secondary;
    final buttonTextColor = Theme.of(context).colorScheme.onSecondary;

    var url = issue.url;

    String markdown = html2md.convert(issue.bodyHTML);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Issue"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(issue.title, style: textTheme.titleMedium),
            const Divider(),
            Flexible(
              fit: FlexFit.tight,
              child: SingleChildScrollView(
                child: MarkdownBody(
                  data: markdown,
                  onTapLink: (_, href, __) {
                    if (href != null) {
                      ref.read(linkServiceProvider).launchLink(href);
                    }
                  },
                ),
              ),
            ),
            ButtonBar(
              children: <Widget>[
                ElevatedButton(
                  key: const Key(startButtonKey),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    foregroundColor: buttonTextColor,
                  ),
                  onPressed: () {
                    ref.read(linkServiceProvider).launchLink(url);
                  },
                  child: const Text("Start"),
                ),
                ElevatedButton(
                  key: const Key(shareButtonKey),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    foregroundColor: buttonTextColor,
                  ),
                  onPressed: () {
                    ref
                        .read(linkServiceProvider)
                        .share('Check out this issue $url');
                  },
                  child: const Text("Share Issue"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @visibleForTesting
  static const startButtonKey = 'Start Button';
  @visibleForTesting
  static const shareButtonKey = 'Share Button';
}

extension IssueDetailPageKeys on IssueDetailPage {}
