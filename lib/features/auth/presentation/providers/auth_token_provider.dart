import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authTokenProvider = StateNotifierProvider<AuthTokenNotifier, String?>(
  (ref) => AuthTokenNotifier(ref),
);

class AuthTokenNotifier extends StateNotifier<String?> {
  final Ref ref;

  AuthTokenNotifier(this.ref) : super(null) {
    _loadToken();
  }

  Future<void> _loadToken() async {
    state = await ref.read(secureStorageProvider).readData('authToken');
  }

  Future<String?> getToken() async {
    if (state != null) return state;
    await _loadToken();
    return state;
  }

  Future<void> saveToken(String token) async {
    await ref.read(secureStorageProvider).writeData('authToken', token);
    state = token;
  }

  Future<void> clear() async {
    await ref.read(secureStorageProvider).deleteData('authToken');
    state = null;
  }
}
