import 'package:good_first_issue/services/services.dart';
import 'package:graphql/client.dart';
import 'package:riverpod/riverpod.dart';

final linkServiceProvider = Provider<LinkService>((ref) {
  return LinkService();
});

final reviewServiceProvider = Provider<ReviewService>((ref) {
  return ReviewService();
});

final issueServiceProvider = Provider<IssueService>((ref) {
  return IssueService(ref.watch(graphQLClientProvider));
});

final graphQLClientProvider = Provider<GraphQLClient>((ref) {
  HttpLink link = HttpLink(
    'https://api.github.com/graphql',
    defaultHeaders: <String, String>{
      'Authorization': 'Bearer ${const String.fromEnvironment('API_KEY')}',
    },
  );

  return GraphQLClient(
    link: link,
    cache: GraphQLCache(),
  );
});
