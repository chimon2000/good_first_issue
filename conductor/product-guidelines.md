# Product Guidelines

## Code Style & Conventions

### State Management
- **Always use Riverpod providers** for app state, never StatefulWidgets
- Define all providers centrally in `app_providers.dart`
- Use `FamilyAsyncNotifier` for complex state management (see `ui/stores/issue_store.dart`)
- Inject services via Riverpod providers

### Data Models
- **Use Freezed** for all data models (immutable classes with code generation)
- Models live in `lib/models/`
- Run `dart run build_runner build` after modifying Freezed models

### File Organization
- **Barrel exports** are used in:
  - `services/services.dart`
  - `ui/widgets/widgets.dart`
  - `ui/stores/stores.dart`
- Pages go in `lib/ui/pages/`
- Reusable widgets go in `lib/ui/widgets/`
- Business logic goes in `lib/services/`
- Utilities go in `lib/core/utils/`

### Naming Conventions
- Use descriptive, clear names
- Follow Dart naming conventions (camelCase for variables/functions, PascalCase for classes)
- Provider names should end with `Provider` (e.g., `authStateProvider`, `graphQLClientProvider`)

## Testing Requirements

### Test-Driven Development (TDD)
- **Write tests BEFORE implementation** for all new features
- All new services must have unit tests
- UI changes should have widget tests
- Aim for high test coverage (tracked via Codecov)

### Test Structure
- Unit tests go in `test/services/`
- Widget tests go in `test/pages/`
- Utility tests go in `test/util/`
- Use `TestWrapper` from `test/_util/wrapper.dart` for widget tests with mock providers
- Use `mocktail` for mocking dependencies

### Running Tests
```bash
flutter test                 # Run all tests
./code_coverage.sh          # Generate coverage report
```

## Git & Version Control

### Commit Messages
- Use **descriptive commit messages** that clearly explain what changed and why
- Be specific and concise
- Example: "Add error handling for failed GitHub API requests"
- Example: "Fix issue list not refreshing after authentication"

### Pull Request Process
1. Create a feature branch from `master`
2. Write tests first (TDD)
3. Implement the feature
4. Ensure all tests pass locally (`flutter test`)
5. Ensure static analysis passes (`flutter analyze`)
6. Open a PR with clear description of changes
7. Link relevant issue numbers in PR description
8. Include screenshots/GIFs for UI changes (use Giphy Capture)
9. **Squash commits** when merging
10. PRs must pass CI before merging

### Code Review Standards
- PRs require approval before merging
- Reviewers should check:
  - Tests are present and passing
  - Code follows project conventions
  - No breaking changes to existing functionality
  - Documentation updated if needed

## Authentication & Security

### GitHub OAuth Flow
- Never hardcode the Supabase anon key (pass via `--dart-define`)
- GitHub OAuth token is persisted in secure storage
- Token is read from secure storage on app restart
- Deep link callback: `app.goodfirstissue.app://callback`

### Provider Token Handling
- `session.providerToken` is extracted and stored via `TokenStorage`
- Token is used for GraphQL API authorization header
- Token is deleted on sign-out

## GraphQL Code Generation

- GraphQL queries live in `packages/github_api/`
- Run code generation from the sub-package directory:
  ```bash
  cd packages/github_api && dart run build_runner build
  ```

## Platform-Specific Configuration

### Deep Links
- **Android**: Configure in `android/app/src/main/AndroidManifest.xml`
- **iOS**: Configure in `ios/Runner/Info.plist`
- Scheme: `app.goodfirstissue.app`

## Adding New Projects

To add a new organization/project to the app:
1. Create an issue first (if one doesn't exist)
2. Update `lib/models/projects.dart`
3. Add project with **name**, **description**, and **q** (GitHub search query)
4. Write tests for the new project
5. Submit PR with issue reference

## Deployment

- App is deployed via **CI/CD pipeline**
- GitHub Actions handles automated testing and deployment
- Builds are automatically deployed to app stores
- Code coverage is tracked via Codecov

