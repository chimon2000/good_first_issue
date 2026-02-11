# Project Index

This is the master manifest for the Good First Issue project. It maps project concerns to specific file locations.

## Conductor Files

- **Product description**: `conductor/product.md`
- **Tech stack**: `conductor/tech-stack.md`
- **Guidelines**: `conductor/product-guidelines.md`
- **Feature tracks**: `conductor/tracks/` (create tracks with `/conductor:new-track`)
- **Agent documentation**: `AGENTS.md` (comprehensive architecture and flow documentation)

## Source Code

### Entry Point & Configuration
- **App entry point**: `lib/main.dart` — Supabase initialization, app bootstrap
- **Provider definitions**: `lib/app_providers.dart` — Central Riverpod providers (auth, token, GraphQL client, services)
- **Project configuration**: `pubspec.yaml` — Dependencies and Flutter configuration
- **Analysis options**: `analysis_options.yaml` — Linter rules

### UI Layer
- **Pages**: `lib/ui/pages/`
  - `home.dart` — Main issue browsing page
  - `login.dart` — GitHub OAuth login
  - `more.dart` — Settings/more options
  - `about.dart` — About page
  - `issue_detail.dart` — Individual issue details
- **Widgets**: `lib/ui/widgets/`
  - `search_panel.dart` — Organization search
  - `issue_list.dart` — Issue list display
  - `empty_card.dart` — Empty state
  - `initial_card.dart` — Initial state
  - `widgets.dart` — Barrel export
- **State Management**: `lib/ui/stores/`
  - `issue_store.dart` — Issue state (`FamilyAsyncNotifier`)
  - `stores.dart` — Barrel export

### Business Logic
- **Services**: `lib/services/`
  - `issue.dart` — Issue fetching and management
  - `link.dart` — URL handling
  - `review.dart` — App review prompts
  - `token_storage.dart` — Secure token persistence
  - `services.dart` — Barrel export

### Data Models
- **Models**: `lib/models/`
  - `issue.dart` — Issue data model (Freezed)
  - `issue_query_result.dart` — GraphQL query result (Freezed)
  - `projects.dart` — Project/organization definitions
  - `*.freezed.dart` — Generated Freezed code
  - `*.g.dart` — Generated JSON serialization

### Utilities
- **Core utilities**: `lib/core/utils/`
  - `logger.dart` — Logging setup
  - Path helpers and other utilities

### GitHub API Package
- **GraphQL API**: `packages/github_api/`
  - GraphQL queries and code generation
  - Separate sub-package for API layer

## Tests

### Test Structure
- **Widget tests**: `test/pages/` — Page-level widget tests
- **Service tests**: `test/services/` — Unit tests for business logic
- **Utility tests**: `test/util/` — Utility function tests
- **Test helpers**: `test/_util/`
  - `wrapper.dart` — `TestWrapper` widget for mock provider setup
  - `mocks.dart` — Mock definitions
- **Legacy test**: `test/widget_test.dart` — Default Flutter test

### Test Execution
- Run all tests: `flutter test`
- Code coverage: `./code_coverage.sh`

## Configuration Files

### Flutter & Dart
- **Dependencies**: `pubspec.yaml`
- **Dependency lock**: `pubspec.lock`
- **Analysis rules**: `analysis_options.yaml`

### Platform Configuration
- **Android**:
  - `android/build.gradle.kts` — Build configuration
  - `android/app/src/main/AndroidManifest.xml` — Deep link configuration
  - `android/gradle.properties` — Gradle properties
- **iOS**:
  - `ios/Podfile` — CocoaPods dependencies
  - `ios/Runner/Info.plist` — Deep link configuration
  - `ios/Runner.xcodeproj/` — Xcode project
- **Web**:
  - `web/index.html` — Web entry point
  - `web/manifest.json` — PWA manifest
  - `web/icons/` — Web app icons
- **Windows**:
  - `windows/` — Windows platform code

### CI/CD & GitHub
- **GitHub Actions**: `.github/workflows/` (workflows for testing and deployment)
- **Code coverage**: Codecov integration (badge in README)

## Documentation

- **README**: `README.md` — Project overview, getting started, contributing
- **Agent docs**: `AGENTS.md` — Architecture, auth flow, conventions (comprehensive)
- **Contributing**: `CONTRIBUTING.md` — Contribution guidelines, PR process
- **Code of Conduct**: `CODE_OF_CONDUCT.md`
- **License**: `LICENSE`

## Build Artifacts

- **Build output**: `build/` — Compiled artifacts (gitignored)
- **iOS Pods**: `ios/Pods/` — CocoaPods dependencies (gitignored)

## Key Workflows

### Authentication Flow
See `AGENTS.md` for detailed authentication flow documentation:
1. User signs in via GitHub OAuth (`LoginPage`)
2. Supabase handles OAuth flow
3. Token persisted via `TokenStorage` (secure storage)
4. GraphQL client configured with token
5. Token restored on app restart

### Issue Discovery Flow
1. User searches by organization (`search_panel.dart`)
2. `IssueStore` fetches issues via `IssueService`
3. GraphQL query to GitHub API (`packages/github_api/`)
4. Results displayed in `issue_list.dart`
5. Tap issue to view details (`issue_detail.dart`)

### Adding New Organizations
1. Create GitHub issue
2. Update `lib/models/projects.dart`
3. Add project with name, description, and GitHub search query
4. Write tests
5. Submit PR

