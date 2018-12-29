import 'package:flutter/material.dart';
import 'package:good_first_issue/models/projects.dart';
import 'package:good_first_issue/pages/issue_detail.dart';
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
    final query = projects[organization]['q'];
    String document = """
      query ReadIssues(\$nQuery: String!, \$nLast: Int!) {
        search(query: \$nQuery, type: ISSUE, last: \$nLast) {
          issueCount
          edges {
            node {
              ... on Issue {
                id,
                title,
                bodyHTML,
                url,
                repository {
                  nameWithOwner
                }
              }
            }
          }
        }
      }
    """
        .replaceAll('\n', ' ');

    var queryOptions = QueryOptions(
      document: document,
      pollInterval: 10,
      fetchPolicy: FetchPolicy.cacheAndNetwork,
      variables: {
        'nQuery': query,
        'nLast': 25,
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Good First Issue'),
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
            child: Query(
              options: queryOptions,
              builder: (QueryResult result) {
                if (result.errors != null) {
                  return Text(result.errors.toString());
                }

                if (result.loading) {
                  return LinearProgressIndicator();
                }

                // it can be either Map or List
                List issues = result.data['search']['edges'];

                return IssueList(
                  issues: issues,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class IssueList extends StatelessWidget {
  final List issues;

  IssueList({@required this.issues});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: issues.length,
      separatorBuilder: (context, index) => Divider(height: 5),
      itemBuilder: (context, index) {
        final issue = issues[index];
        var title = issue['node']['title'];
        var repository = issue['node']['repository']['nameWithOwner'];

        return ListTile(
          title: Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(repository),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => IssueDetailPage(
                      issue: issue,
                    ),
              ),
            );
          },
        );
      },
    );
  }
}
