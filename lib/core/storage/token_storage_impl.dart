import 'package:chatting_application_practice/core/storage/token_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorageImpl extends TokenStorage {
  final FlutterSecureStorage _storage;
  bool _isLoaded = false;
  String? _cachedToken;
  static const String cachedTokenKey = "access_token";

  TokenStorageImpl(this._storage);

  @override
  Future<void> clearToken() async {
    await _storage.delete(key: cachedTokenKey);

    _isLoaded = false;
    _cachedToken = null;
  }

  @override
  Future<String?> readToken() async {
    if (_isLoaded) return _cachedToken;

    _cachedToken = await _storage.read(key: cachedTokenKey);
    _isLoaded = true;

    return _cachedToken;
  }

  @override
  Future<void> writeToken(String token) async {
    await _storage.write(key: cachedTokenKey, value: token);

    _cachedToken = token;
    _isLoaded = true;
  }
}
