import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Securely stores and retrieves the GitHub OAuth provider token.
///
/// Supabase only provides the provider token (`session.providerToken`) at
/// initial sign-in. On subsequent app launches the Supabase session is
/// restored but the provider token may be `null`. This service persists the
/// token so it survives app restarts.
class TokenStorage {
  TokenStorage({FlutterSecureStorage? storage})
      : _storage = storage ?? const FlutterSecureStorage();

  final FlutterSecureStorage _storage;

  static const _githubTokenKey = 'github_provider_token';

  /// Persist the GitHub provider token.
  Future<void> saveGitHubToken(String token) async {
    await _storage.write(key: _githubTokenKey, value: token);
  }

  /// Read the persisted GitHub provider token, or `null` if none is stored.
  Future<String?> readGitHubToken() async {
    return _storage.read(key: _githubTokenKey);
  }

  /// Delete the persisted GitHub provider token (e.g. on sign-out).
  Future<void> deleteGitHubToken() async {
    await _storage.delete(key: _githubTokenKey);
  }
}

