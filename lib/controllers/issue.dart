import 'package:good_first_issue/core/utils/logger.dart';
import 'package:good_first_issue/models/issue_query_result.dart';
import 'package:good_first_issue/services/issue.dart';
import 'package:remote_state/remote_state.dart';
import 'package:state_notifier/state_notifier.dart';

class IssueController extends StateNotifier<RemoteState<IssuesQueryResult>>
    with LocatorMixin, ReporterMixin {
  IssueService get issueService => read<IssueService>();

  IssueController() : super(RemoteState<IssuesQueryResult>.initial());

  fetchMoreIssues({String organization, int last = 25, String after}) async {
    state = state.maybeWhen(
        success: (state) =>
            RemoteState.success(state.copyWith(isFetchingMore: true)),
        orElse: () => RemoteState.loading());

    try {
      var result = await issueService.getIssues(
          organization: organization, last: last, after: after);

      state = state.maybeWhen(
          success: (state) => RemoteState.success(state.copyWith(
                issues: [...state.issues, ...result.issues],
                endCursor: result.endCursor,
                hasNextPage: result.hasNextPage,
                count: result.count + state.count,
                isFetchingMore: false,
              )),
          orElse: () => RemoteState.success(result));
    } catch (e) {
      logError(e);
      state = RemoteState.error();
    }
  }

  getIssues({String organization, int last = 25}) async {
    state = RemoteState.loading();

    try {
      var result =
          await issueService.getIssues(organization: organization, last: last);

      state = RemoteState.success(result);
    } catch (e) {
      logError(e);
      state = RemoteState.error();
    }
  }
}
