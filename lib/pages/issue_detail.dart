import 'package:flutter/material.dart';
import 'package:good_first_issue/models/issue.dart';
import 'package:html2md/html2md.dart' as html2md;
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class IssueDetailPage extends StatelessWidget {
  static Route<dynamic> route(Issue issue) {
    return MaterialPageRoute(builder: (context) {
      return IssueDetailPage(issue: issue);
    });
  }

  final Issue issue;

  IssueDetailPage({@required this.issue});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final buttonColor = Theme.of(context).accentColor;
    final buttonTextColor = Theme.of(context).accentTextTheme.button.color;

    var url = issue.url;

    String markdown = html2md.convert(issue.bodyHTML);

    return Scaffold(
      appBar: AppBar(
        title: Text("Issue"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(issue.title, style: textTheme.title),
            Divider(),
            Flexible(
              fit: FlexFit.tight,
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
