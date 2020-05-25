import 'package:colorize_lumberdash/colorize_lumberdash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:good_first_issue/models/issue_query_result.dart';
import 'package:good_first_issue/pages/home.dart';
import 'package:good_first_issue/services/issue.dart';
import 'package:good_first_issue/services/review.dart';
import 'package:good_first_issue/services/services.dart';
import 'package:good_first_issue/stores/issue_store.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:lumberdash/lumberdash.dart';
import 'package:provider/provider.dart';
import 'package:remote_state/remote_state.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  putLumberdashToWork(withClients: [ColorizeLumberdash()]);
  HttpLink link = HttpLink(
    uri: 'https://api.github.com/graphql',
    headers: <String, String>{
      'Authorization': 'Bearer ae98cf46f0e6c78f23562d85abbbeee6e6f0bcbd',
    },
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      cache: InMemoryCache(),
      link: link,
    ),
  );

  runApp(GoodFirstIssueApp(client: client));
}

class GoodFirstIssueApp extends StatelessWidget {
  final ValueNotifier<GraphQLClient> client;

  GoodFirstIssueApp({this.client});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: MultiProvider(
        providers: [
          Provider<LinkService>(create: (_) => LinkService()),
          Provider<ReviewService>(create: (_) => ReviewService()),
          Provider<IssueService>(create: (_) => IssueService(client.value)),
          StateNotifierProvider<IssueStore,
              RemoteState<IssuesQueryResult>>(
            create: (_) => IssueStore(),
          ),
        ],
        child: MaterialApp(
          title: 'Good First Issue',
          theme: ThemeData(
            primarySwatch: Colors.blueGrey,
          ),
          home: HomePage(),
        ),
      ),
    );
  }
}
