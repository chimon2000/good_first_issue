// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:riverpod/riverpod.dart';

import 'package:good_first_issue/app_providers.dart';
import 'package:good_first_issue/core/utils/logger.dart';
import 'package:good_first_issue/models/issue_query_result.dart';

final issueStoreProvider =
    AsyncNotifierProviderFamily<IssueStore, IssuesQueryResult, IssueStoreArgs?>(
  IssueStore.new,
);

class IssueStore extends FamilyAsyncNotifier<IssuesQueryResult, IssueStoreArgs?>
    with ReporterMixin {
  @override
  FutureOr<IssuesQueryResult> build(IssueStoreArgs? arg) async {
    final issueService = ref.watch(issueServiceProvider);

    var result = await issueService.getIssues(
      organization: arg?.organization ?? 'flutter',
      last: arg?.last ?? 25,
    );

    return result;
  }

  Future<void> fetchMoreIssues({int last = 25}) async {
    final issueService = ref.watch(issueServiceProvider);

    await update((p0) => p0.copyWith(isFetchingMore: true));

    try {
      await update((state) async {
        var result = await issueService.getIssues(
          organization: arg?.organization ?? 'flutter',
          last: last,
          after: state.endCursor,
        );

        return state.copyWith(
          issues: [...state.issues, ...result.issues],
          endCursor: result.endCursor,
          hasNextPage: result.hasNextPage,
          count: result.count + state.count,
          isFetchingMore: false,
        );
      });
    } catch (e) {
      logError(e);
      rethrow;
    }
  }
}

class IssueStoreArgs extends Equatable {
  const IssueStoreArgs({
    required this.organization,
    this.last = 25,
  });
  final String organization;
  final int last;

  @override
  List<Object> get props => [organization, last];
}
