import 'package:flutter/material.dart';
import 'package:good_first_issue/controllers/issue.dart';
import 'package:good_first_issue/models/issue_query_result.dart';
import 'package:good_first_issue/pages/issue_detail.dart';
import 'package:good_first_issue/pages/more.dart';
import 'package:good_first_issue/widgets/issue_list.dart';
import 'package:good_first_issue/widgets/search_panel.dart';
import 'package:good_first_issue/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:remote_state/remote_state.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }

  @visibleForTesting
  static const scrollToTopButtonKey = 'Scroll To Top Button';
  @visibleForTesting
  static const moreButtonKey = 'More Button';
}

class HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  final Duration _scrollDuration = const Duration(milliseconds: 1000);
  IssueController _issueController;
  var organization = 'flutter';

  void _scrollOnTop() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(_scrollController.position.minScrollExtent,
          duration: _scrollDuration, curve: Curves.easeIn);
    }
  }

  @override
  void initState() {
    _issueController = Provider.of<IssueController>(context, listen: false);

    Future.microtask(() {
      _issueController.getIssues(organization: organization);
    });
    super.initState();
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
            key: Key(HomePage.moreButtonKey),
            icon: Icon(Icons.more_vert),
            onPressed: () => Navigator.of(context).push(MorePage.route()),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          key: Key(HomePage.scrollToTopButtonKey),
          elevation: 10.0,
          highlightElevation: 15.0,
          backgroundColor: Colors.white,
          onPressed: () => _scrollOnTop(),
          child: Icon(Icons.arrow_upward, color: Colors.grey)),
      body: Column(
        children: <Widget>[
          SearchPanel(
            onSearchChanged: (organization) {
              _issueController.getIssues(organization: organization);
              setState(() {
                this.organization = organization;
              });
            },
            initialOrganization: 'flutter',
          ),
          Flexible(
            child: _buildIssueList(context),
          ),
        ],
      ),
    );
  }

  _buildIssueList(BuildContext context) {
    var queryResultState = Provider.of<RemoteState<IssuesQueryResult>>(context);

    return queryResultState.when(
      initial: () => InitialCard(),
      loading: () => LinearProgressIndicator(),
      success: (state) => state.issues.isEmpty
          ? EmptyCard()
          : Container(
              child: Center(
                child: RefreshIndicator(
                  onRefresh: () =>
                      _issueController.getIssues(organization: organization),
                  child: IssueList(
                    onIssueTap: (issue) => Navigator.of(context)
                        .push(IssueDetailPage.route(issue)),
                    onFetchMore: () {
                      _issueController.fetchMoreIssues(
                          organization: organization, after: state.endCursor);
                    },
                    issues: state.issues,
                    controller: _scrollController,
                    hasNextPage: state.hasNextPage,
                    isFetchingMore: state.isFetchingMore,
                  ),
                ),
              ),
            ),
      error: (error, _) => Text(error),
    );
  }
}
