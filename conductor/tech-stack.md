# Tech Stack

## Languages & Frameworks

- **Flutter** — Cross-platform UI framework (iOS, Android, Web, Windows)
- **Dart** — SDK >=2.18.0 <3.0.0

## State Management & Architecture

- **Riverpod** (`flutter_riverpod`, `riverpod`) — Dependency injection and state management
  - Providers defined centrally in `app_providers.dart`
  - `FamilyAsyncNotifier` for issue state in `ui/stores/`
  - No StatefulWidgets for app state
- **Freezed** (`freezed`, `freezed_annotation`) — Immutable data classes with code generation

## API & Data

- **GraphQL** (`graphql`, `graphql_flutter`) — GitHub API communication
- **graphql_codegen** — GraphQL query code generation in `packages/github_api/`
- **Supabase** (`supabase_flutter`) — GitHub OAuth authentication
- **flutter_secure_storage** — Persists GitHub OAuth provider token across app restarts

## UI & Utilities

- **flutter_markdown** — Markdown rendering for issue descriptions
- **html2md** — HTML to Markdown conversion
- **gap** — Spacing widgets
- **dartx** — Dart extensions
- **url_launcher** — Open external URLs
- **share_plus** — Share functionality
- **launch_review** — In-app review prompts
- **path_provider** — File system paths

## Logging

- **lumberdash** — Logging framework
- **colorize_lumberdash** — Colored console logs
- **print_lumberdash** — Print-based logging

## Testing

- **flutter_test** — Flutter widget testing
- **test** — Dart unit testing
- **mocktail** — Test mocking
- **TestWrapper** (`test/_util/wrapper.dart`) — Sets up mock providers via `ProviderScope` overrides

## Build Tools & Code Generation

- **build_runner** — Code generation runner
- **freezed** — Generates immutable classes
- **json_serializable** — JSON serialization
- **remove_from_coverage** — Exclude generated files from coverage

## Build & Run Commands

```bash
# Install dependencies
flutter pub get

# Run the app (Supabase anon key required)
flutter run --dart-define=SUPABASE_ANON_KEY=<key>

# Static analysis
flutter analyze

# Run tests
flutter test

# Code coverage
./code_coverage.sh

# GraphQL code generation
cd packages/github_api && dart run build_runner build
```

## Deployment & CI/CD

- **GitHub Actions** — Automated testing and deployment
- **CI/CD Pipeline** — Automated builds and deployment to app stores
- **Code Coverage** — Tracked via Codecov

## Platform Configuration

- **Android** — Deep link: `app.goodfirstissue.app://callback` (AndroidManifest.xml)
- **iOS** — Deep link: `app.goodfirstissue.app://callback` (Info.plist)
- **Web** — Supported
- **Windows** — Supported

