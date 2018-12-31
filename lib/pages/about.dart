import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

    return new Scaffold(
      appBar: new AppBar(
        title: const Text('About'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              'Author'.toUpperCase(),
              style: textTheme.title.copyWith(
                color: theme.accentColor,
              ),
            ),
            dense: true,
            contentPadding: EdgeInsets.only(left: 10),
          ),
          divider(context,
              height: 2.0, width: 2, color: Theme.of(context).accentColor),
        ]..addAll(
            contactInfo.map<Widget>(
              (info) {
                var title = info['title'];
                var subtitle = info['subtitle'];
                var url = info['url'];

                return ListTile(
                  dense: true,
                  title: Text(title),
                  subtitle: subtitle.isNotEmpty ? Text(subtitle) : null,
                  onTap: url.isNotEmpty
                      ? () async {
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }
                      : null,
                );
              },
            ),
          ),
      ),
    );
  }
}

Widget divider(
  BuildContext context, {
  double height = 1,
  double width = 1,
  Color color,
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
