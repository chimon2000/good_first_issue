import 'dart:async';

import 'package:good_first_issue/services/services.dart';
import 'package:graphql/client.dart';
import 'package:riverpod/riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final linkServiceProvider = Provider<LinkService>((ref) {
  return LinkService();
});

final reviewServiceProvider = Provider<ReviewService>((ref) {
  return ReviewService();
});

final issueServiceProvider = Provider<IssueService>((ref) {
  return IssueService(ref.watch(graphQLClientProvider));
});

/// Provides a [TokenStorage] instance for persisting the GitHub token.
final tokenStorageProvider = Provider<TokenStorage>((ref) {
  return TokenStorage();
});

/// Streams Supabase auth state changes (sign-in, sign-out, token refresh).
final authStateProvider = StreamProvider<AuthState>((ref) {
  final controller = StreamController<AuthState>();

  // Emit the current auth state immediately
  final currentSession = Supabase.instance.client.auth.currentSession;
  controller.add(
    AuthState(
      currentSession != null
          ? AuthChangeEvent.signedIn
          : AuthChangeEvent.signedOut,
      currentSession,
    ),
  );

  // Listen to future auth state changes
  final subscription =
      Supabase.instance.client.auth.onAuthStateChange.listen((data) {
    controller.add(data);
  });

  ref.onDispose(() {
    subscription.cancel();
    controller.close();
  });

  return controller.stream;
});

/// Provides the GitHub access token, persisting it in secure storage.
///
/// On initial sign-in, `session.providerToken` is available and gets saved
/// to secure storage. On subsequent app launches the Supabase session is
/// restored but `providerToken` may be `null` — in that case the token is
/// read back from secure storage.
final githubTokenProvider = FutureProvider<String?>((ref) async {
  final authState = ref.watch(authStateProvider);
  final tokenStorage = ref.watch(tokenStorageProvider);

  return authState.when(
    data: (state) async {
      final providerToken = state.session?.providerToken;

      if (providerToken != null) {
        // Fresh sign-in — persist the token
        await tokenStorage.saveGitHubToken(providerToken);
        return providerToken;
      }

      if (state.session != null) {
        // Session exists but providerToken is null (app restart) — read from storage
        return tokenStorage.readGitHubToken();
      }

      // Not signed in
      return null;
    },
    loading: () => null,
    error: (_, __) => null,
  );
});

final graphQLClientProvider = Provider<GraphQLClient>((ref) {
  final tokenAsync = ref.watch(githubTokenProvider);
  final token = tokenAsync.valueOrNull;

  HttpLink link = HttpLink(
    'https://api.github.com/graphql',
    defaultHeaders: <String, String>{
      if (token != null) 'Authorization': 'Bearer $token',
    },
  );

  return GraphQLClient(
    link: link,
    cache: GraphQLCache(),
  );
});
