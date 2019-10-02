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
  final ScrollController _scrollController = ScrollController();
  final Duration _scrollDuration = const Duration(milliseconds: 1000);
  var organization = 'flutter';

  void _scrollOnTop() {
    _scrollController.animateTo(
        _scrollController.position.minScrollExtent,
        duration: _scrollDuration,
        curve: Curves.easeIn
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

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
      floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          highlightElevation: 15.0,
          backgroundColor: Colors.white,
          onPressed: () => _scrollOnTop(),
          child: Icon(Icons.arrow_upward, color: Colors.grey)
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
                  scrollController: _scrollController,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
