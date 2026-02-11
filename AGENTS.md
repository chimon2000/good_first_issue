# AGENTS.md

## Project Overview

Good First Issue is a Flutter app that helps users find "good first issue" labeled issues on GitHub. Users authenticate via Supabase GitHub OAuth, then browse and search issues by organization using the GitHub GraphQL API.

## Tech Stack

- **Flutter / Dart** — UI framework
- **Riverpod** — State management and dependency injection (`flutter_riverpod`, `riverpod`)
- **GraphQL** — GitHub API communication (`graphql`, `graphql_flutter`)
- **Supabase** — GitHub OAuth authentication (`supabase_flutter`)
- **flutter_secure_storage** — Persists the GitHub OAuth provider token across app restarts
- **Freezed** — Immutable data classes with code generation (`freezed`, `freezed_annotation`)
- **graphql_codegen** — GraphQL query code generation in `packages/github_api/`
- **mocktail** — Test mocking

## Project Structure

```
lib/
├── main.dart                   # App entry point, Supabase initialization
├── app_providers.dart          # Central Riverpod providers (auth, token, GraphQL client, services)
├── ui/
│   ├── pages/                  # Pages: home, login, more, about, issue_detail
│   ├── widgets/                # Reusable widgets: search_panel, issue_list, empty_card, initial_card
│   └── stores/                 # State management: issue_store (FamilyAsyncNotifier)
├── services/                   # Services: issue, link, review, token_storage
├── models/                     # Data models (Freezed): issue, issue_query_result, projects
└── core/utils/                 # Utilities: logger, path helpers

packages/github_api/            # Sub-package for GitHub GraphQL API queries and codegen

test/
├── pages/                      # Page widget tests
├── services/                   # Service unit tests
├── util/                       # Utility tests
└── _util/                      # Test helpers: wrapper.dart (TestWrapper), mocks.dart
```

## Build & Run Commands

```bash
# Install dependencies
flutter pub get

# Run the app (Supabase anon key is passed at compile time, not hardcoded)
flutter run --dart-define=SUPABASE_ANON_KEY=<key>

# Static analysis
flutter analyze

# Run tests (12 tests)
flutter test

# GraphQL code generation (run from the sub-package directory)
cd packages/github_api && dart run build_runner build
```

## Key Conventions

- **State management** uses Riverpod providers, not StatefulWidgets for app state.
- **Services** are injected via Riverpod providers defined in `app_providers.dart`.
- **Barrel exports** are used in `services/services.dart`, `ui/widgets/widgets.dart`, and `ui/stores/stores.dart`.
- **Models** use Freezed for immutable data classes with code generation.
- **Tests** use `mocktail` for mocking and a `TestWrapper` widget (`test/_util/wrapper.dart`) that sets up mock providers via `ProviderScope` overrides.

## Authentication Flow

1. User taps "Sign in with GitHub" on `LoginPage`.
2. `signInWithOAuth(OAuthProvider.github)` opens GitHub OAuth in the browser.
3. After authorization, GitHub redirects back via the deep link `app.goodfirstissue.app://callback`.
4. `authStateProvider` (a `StreamProvider`) detects the sign-in event from `onAuthStateChange`.
5. `githubTokenProvider` (a `FutureProvider`) extracts `session.providerToken` and persists it to secure storage via `TokenStorage`.
6. `graphQLClientProvider` watches the token and creates a `GraphQLClient` with the `Authorization: Bearer <token>` header.
7. On app restart, Supabase restores its own session but `providerToken` is `null`. The token is read back from secure storage so GraphQL calls work immediately without re-authentication.
8. On sign-out, the stored token is deleted and the Supabase session is cleared.

## Platform Configuration

Deep link URL schemes for the OAuth callback are configured in:

- **Android**: `android/app/src/main/AndroidManifest.xml` — `intent-filter` with scheme `app.goodfirstissue.app`
- **iOS**: `ios/Runner/Info.plist` — `CFBundleURLTypes` with scheme `app.goodfirstissue.app`

