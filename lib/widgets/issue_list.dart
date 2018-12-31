import 'package:flutter/material.dart';
import 'package:good_first_issue/pages/issue_detail.dart';

class IssueList extends StatelessWidget {
  final List issues;
  final ScrollController controller;

  IssueList({@required this.issues, this.controller});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: controller,
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
