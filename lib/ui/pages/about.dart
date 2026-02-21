import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:good_first_issue/app_providers.dart';

class AboutPage extends ConsumerWidget {
  const AboutPage({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute(builder: (context) {
      return const AboutPage();
    },);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    const contactInfo = [
      {
        'title': 'ryanedge.page',
        'subtitle': 'website',
        'url': 'https://ryanedge.page'
      },
      {
        'title': '@chimon1984',
        'subtitle': 'twitter',
        'url': 'https://twitter.com/chimon1984'
      },
      {
        'title': '@chimon2000',
        'subtitle': 'github',
        'url': 'https://github.com/chimon2000'
      },
      {
        'title': 'Contact me',
        'subtitle': '',
        'url': 'mailto:info@ryanedge.page'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              'Author'.toUpperCase(),
              style: textTheme.titleLarge?.copyWith(
                color: theme.colorScheme.secondary,
              ),
            ),
            subtitle: Text(
              'A software engineer of perfectly adecquate merit',
              style: textTheme.titleSmall
                  ?.copyWith(color: textTheme.bodySmall?.color),
            ),
            dense: true,
          ),
          divider(context,
              height: 2.0,
              width: 2,
              color: Theme.of(context).colorScheme.secondary,),
          ...contactInfo.map<Widget>(
            (info) {
              var title = info['title'];
              var subtitle = info['subtitle'];
              var url = info['url'];

              return ListTile(
                dense: true,
                title: Text(title!),
                subtitle:
                    subtitle?.isNotEmpty ?? false ? Text(subtitle!) : null,
                onTap: url?.isNotEmpty ?? false
                    ? () async {
                        await ref.read(linkServiceProvider).launchLink(url!);
                      }
                    : null,
              );
            },
          ),
        ],
      ),
    );
  }
}

Widget divider(
  BuildContext context, {
  double height = 1,
  double width = 1,
  required Color color,
}) {
  return SizedBox(
    height: height,
    child: Center(
      child: Container(
        height: 0.0,
        decoration: BoxDecoration(
          border: Border(
            bottom: Divider.createBorderSide(context, color: color, width: 2),
          ),
        ),
      ),
    ),
  );
}
