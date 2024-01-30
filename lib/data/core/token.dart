import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class MissingTokenException implements Exception {}

class TokenStore {
  final FlutterSecureStorage storage;
  final String key;

  const TokenStore(this.storage, this.key);

  Future<bool> hasToken() =>
      storage.read(key: key).then((token) => token != null);

  Future<String> get(String key) => storage.read(key: key).then(
        (token) {
          if (token == null) throw MissingTokenException();
          return token;
        },
      );

  Future<void> persist(String key, String token) =>
      storage.write(key: key, value: token);

  Future<void> persistAccessToken(String token) => persist(key, token);

  Future<String> getToken() => get(key);

  Future<void> delete(String key) => storage.delete(key: key);

  Future<void> deleteToken() async {
    await delete(key);
  }
}

class AuthTokenStore<T> extends TokenStore {
  final String refreshKey;
  final FlutterSecureStorage secureStorage;

  const AuthTokenStore(this.secureStorage, String key)
      : refreshKey = '${key}_refresh',
        super(secureStorage, key);

  Future<void> persistRefreshToken(String token) => persist(refreshKey, token);

  Future<String> getRefreshToken() => get(refreshKey);

  Future<void> deleteRefreshToken() => delete(refreshKey);

  Future<void> clear() async {
    await deleteToken();
    await deleteRefreshToken();
  }
}
