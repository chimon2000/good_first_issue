import 'package:flutter/material.dart';
import 'package:good_first_issue/pages/home.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
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
      child: MaterialApp(
        title: 'Good First Issue',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
