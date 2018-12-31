import 'package:flutter/material.dart';
import 'package:good_first_issue/pages/about.dart';
import 'package:url_launcher/url_launcher.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('More'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Rate on Google Play'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.bug_report),
            title: Text('Issue tracker'),
            subtitle: Text('Report issue or suggest features'),
            onTap: () async {
              const url =
                  "https://github.com/chimon2000/good_first_issue/issues";

              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About'),
            subtitle: Text('Contributors and support'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return AboutPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
