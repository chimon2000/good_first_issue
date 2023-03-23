import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:good_first_issue/models/issue_query_result.dart';
import 'package:good_first_issue/ui/pages/issue_detail.dart';
import 'package:good_first_issue/ui/pages/more.dart';
import 'package:good_first_issue/ui/stores/stores.dart';
import 'package:good_first_issue/ui/widgets/widgets.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() {
    return HomePageState();
  }

  @visibleForTesting
  static const scrollToTopButtonKey = 'Scroll To Top Button';
  @visibleForTesting
  static const moreButtonKey = 'More Button';
}

class HomePageState extends ConsumerState<HomePage> {
  final Duration _scrollDuration = const Duration(milliseconds: 1000);

  void _scrollOnTop() {
    final scrollController = ref.read(scrollControllerProvider);
    if (scrollController.hasClients) {
      scrollController.animateTo(
        scrollController.position.minScrollExtent,
        duration: _scrollDuration,
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final queryResultState = ref.watch(
      issueStoreProvider(
        IssueStoreArgs(organization: ref.watch(currentOrganizationProvider)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Good First Issue'),
        actions: <Widget>[
          IconButton(
            key: const Key(HomePage.moreButtonKey),
            icon: const Icon(Icons.more_vert),
            onPressed: () => Navigator.of(context).push(MorePage.route()),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key(HomePage.scrollToTopButtonKey),
        elevation: 10.0,
        highlightElevation: 15.0,
        backgroundColor: Colors.white,
        onPressed: () => _scrollOnTop(),
        child: const Icon(Icons.arrow_upward, color: Colors.grey),
      ),
      body: Column(
        children: <Widget>[
          SearchPanel(
            onSearchChanged: (organization) {
              ref.read(currentOrganizationProvider.notifier).state =
                  organization ?? 'flutter';
            },
            initialOrganization: 'flutter',
          ),
          Flexible(
            child: queryResultState.when(
              loading: () => const InitialCard(),
              data: (state) => state.issues.isEmpty
                  ? const EmptyCard()
                  : IssueListDataView(
                      issuesQueryResult: state,
                    ),
              error: (error, _) => Text(error.toString()),
            ),
          ),
        ],
      ),
    );
  }
}

class IssueListDataView extends ConsumerWidget {
  const IssueListDataView({
    super.key,
    required this.issuesQueryResult,
  });

  final IssuesQueryResult issuesQueryResult;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: RefreshIndicator(
        onRefresh: () {
          return ref.refresh(
            issueStoreProvider(
              IssueStoreArgs(
                organization: ref.read(currentOrganizationProvider),
              ),
            ).future,
          );
        },
        child: IssueList(
          scrollController: ref.watch(scrollControllerProvider),
          onIssueTap: (issue) =>
              Navigator.of(context).push(IssueDetailPage.route(issue)),
          onFetchMore: () {
            ref
                .read(
                  issueStoreProvider(
                    IssueStoreArgs(
                      organization: ref.read(currentOrganizationProvider),
                    ),
                  ).notifier,
                )
                .fetchMoreIssues();
          },
          issues: issuesQueryResult.issues,
          hasNextPage: issuesQueryResult.hasNextPage,
          isFetchingMore: issuesQueryResult.isFetchingMore,
        ),
      ),
    );
  }
}

final currentOrganizationProvider = StateProvider<String>((ref) {
  return 'flutter';
});

final scrollControllerProvider = Provider.autoDispose<ScrollController>((ref) {
  final controller = ScrollController();
  ref.onDispose(() {
    controller.dispose();
  });
  return controller;
});
