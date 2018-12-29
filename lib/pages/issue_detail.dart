import 'package:flutter/material.dart';
import 'package:html2md/html2md.dart' as html2md;
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class IssueDetailPage extends StatelessWidget {
  final issue;

  IssueDetailPage({@required this.issue});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final buttonColor = Theme.of(context).accentColor;
    final buttonTextColor = Theme.of(context).accentTextTheme.button.color;

    var title = issue['node']['title'];
    var url = issue['node']['url'];
    var bodyHTML = issue['node']['bodyHTML'];

    String markdown = html2md.convert(bodyHTML);

    return Scaffold(
      appBar: AppBar(
        title: Text("Issue"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(title, style: textTheme.title),
            Divider(),
            Flexible(
              child: SingleChildScrollView(
                child: MarkdownBody(
                  data: markdown,
                  onTapLink: (String url) async {
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              ),
            ),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text("Start"),
                  color: buttonColor,
                  textColor: buttonTextColor,
                  onPressed: () async {
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                RaisedButton(
                  child: Text("Share Issue"),
                  color: buttonColor,
                  textColor: buttonTextColor,
                  onPressed: () {
                    Share.share('Check out this issue $url');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
