import 'package:flutter/material.dart';
import 'package:good_first_issue/models/issue.dart';

class IssueList extends StatelessWidget {
  const IssueList({
    super.key,
    required this.issues,
    required this.onFetchMore,
    this.hasNextPage = false,
    this.isFetchingMore = false,
    required this.onIssueTap,
  });

  final List<Issue> issues;
  final VoidCallback onFetchMore;
  final bool hasNextPage;
  final bool isFetchingMore;
  final Function(Issue issue) onIssueTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: issues.length + 1,
            separatorBuilder: (context, index) => const Divider(height: 5),
            itemBuilder: (context, index) {
              if (index == issues.length) {
                return hasNextPage
                    ? TextButton(
                        child: const Text('Load more'),
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
      ],
    );
  }
}
