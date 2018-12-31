import 'package:flutter/material.dart';
import 'package:good_first_issue/pages/more.dart';
import 'package:good_first_issue/widgets/issue_query.dart';
import 'package:good_first_issue/widgets/search_panel.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var organization = 'flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Good First Issue'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => MorePage(), fullscreenDialog: true),
              );
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          SearchPanel(
            onSearchChanged: (organization) {
              setState(() {
                this.organization = organization;
              });
            },
            initialOrganization: organization,
          ),
          Flexible(
            child: GraphQLConsumer(
              builder: (GraphQLClient client) {
                return IssueQuery(
                  client: client,
                  organization: organization,
                  initialCount: 50,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
