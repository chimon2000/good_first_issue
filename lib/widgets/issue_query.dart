import 'dart:async';

import 'package:flutter/material.dart';
import 'package:good_first_issue/models/projects.dart';
import 'package:good_first_issue/widgets/issue_list.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class IssueQuery extends StatefulWidget {
  final String organization;
  final int initialCount;
  final GraphQLClient client;

  IssueQuery({
    @required this.organization,
    @required this.initialCount,
    @required this.client,
  });

  @override
  _IssueQueryState createState() => _IssueQueryState();
}

class _IssueQueryState extends State<IssueQuery> {
  bool isLoading = true;
  bool isFetchingMore = false;

  int count = 0;
  int maxCount = 0;

  List issues;
  List<GraphQLError> errors;
  Timer _debounce;

  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;

  void _onScroll() {
    if (count == maxCount) return;

    if (_debounce?.isActive ?? false) _debounce.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      // do something with _searchQuery.text
      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.position.pixels;

      if (maxScroll - currentScroll <= _scrollThreshold) {
        setState(() {
          count = count + 50;
          print('increment count $count');
          executeQuery();
        });
      }
    });
  }

  void executeQuery({fetchingMore = false}) {
    final query = projects[widget.organization]['q'];
    String document = """
      query ReadIssues(\$nQuery: String!, \$nLast: Int!) {
        search(query: \$nQuery, type: ISSUE, last: \$nLast) {
          issueCount
          edges {
            node {
              ... on Issue {
                id,
                title,
                body,
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
      fetchPolicy: FetchPolicy.cacheAndNetwork,
      variables: {
        'nQuery': query,
        'nLast': count,
      },
    );

    setState(() {
      isFetchingMore = fetchingMore;
    });

    widget.client.query(queryOptions).then((result) {
      setState(() {
        if (result.errors != null) {
          errors = result.errors;
        } else {
          isLoading = result.loading;
          issues = result.data['search']['edges'];
          maxCount = result.data['search']['issueCount'];
          count = issues.length;

          if (fetchingMore) {
            isFetchingMore = false;
          }
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();

    if (mounted) {
      executeQuery();
      _scrollController.addListener(_onScroll);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  void didUpdateWidget(IssueQuery oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.organization != widget.organization) {
      print('reset count');
      setState(() {
        isLoading = true;
        count = widget.initialCount;
      });
    }
    executeQuery();
  }

  @override
  Widget build(BuildContext context) {
    //TODO: Call builder here rather than explicitly loading UI
    if (errors != null) {
      return Text(errors.toString());
    }

    if (isLoading) {
      return LinearProgressIndicator();
    }

    return IssueList(
      issues: issues,
      controller: _scrollController,
    );
  }
}
