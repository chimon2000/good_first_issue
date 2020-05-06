import 'package:flutter/material.dart';
import 'package:good_first_issue/pages/about.dart';
import 'package:good_first_issue/services/link.dart';
import 'package:good_first_issue/services/services.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:launch_review/launch_review.dart';

class MorePage extends StatelessWidget {
  static Route<void> route() => MaterialPageRoute(
      builder: (context) => MorePage(), fullscreenDialog: true);

  @override
  Widget build(BuildContext context) {
    bool isIOS = Theme.of(context).platform == TargetPlatform.iOS;
    String platformStore = isIOS ? 'App Store' : 'Google Play Store';

    return Scaffold(
      appBar: AppBar(
        title: const Text('More'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Rate on $platformStore'),
            onTap: () {
              Provider.of<ReviewService>(context, listen: false).launchReview();
            },
          ),
          ListTile(
            leading: Icon(Icons.bug_report),
            title: Text('Issue tracker'),
            subtitle: Text('Report issue or suggest features'),
            onTap: () async {
              var linkService =
                  Provider.of<LinkService>(context, listen: false);
              const url =
                  "https://github.com/chimon2000/good_first_issue/issues";

              await linkService.launchLink(url);
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About'),
            subtitle: Text('Contributors and support'),
            onTap: () {
              Navigator.of(context).pushReplacement(AboutPage.route());
            },
          ),
        ],
      ),
    );
  }
}
