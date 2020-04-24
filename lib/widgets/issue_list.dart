import 'package:flutter/material.dart';
import 'package:good_first_issue/models/issue.dart';

class IssueList extends StatelessWidget {
  final List<Issue> issues;
  final VoidCallback onFetchMore;
  final bool hasNextPage;
  final bool isFetchingMore;
  final Function(Issue issue) onIssueTap;

  final ScrollController controller;

  IssueList({
    @required this.issues,
    @required this.onFetchMore,
    this.hasNextPage,
    this.isFetchingMore,
    @required this.onIssueTap,
    @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            controller: controller,
            itemCount: issues.length + 1,
            separatorBuilder: (context, index) => Divider(height: 5),
            itemBuilder: (context, index) {
              if (index == issues.length) {
                return hasNextPage
                    ? FlatButton(
                        child: Text('Load more'),
                        onPressed: () {
                          onFetchMore();
                        },
                      )
                    : Container();
              }

              final issue = issues[index];

              return ListTile(
                title: Text(
                  issue.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(issue.repository.nameWithOwner),
                onTap: () => onIssueTap(issue),
              );
            },
          ),
        ),
        if (isFetchingMore)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
      ],
    );
  }
}
