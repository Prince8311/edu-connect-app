import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_riverpod/legacy.dart';

final authTokenProvider = StateNotifierProvider<AuthTokenNotifier, String?>(
  (ref) => AuthTokenNotifier(ref),
);

/// Changes whenever the active account/session changes.
///
/// Account-scoped providers watch this value so a provider that is still
/// mounted behind the router cannot expose data fetched for the previous user.
final authSessionRevisionProvider = StateProvider<int>((ref) => 0);

class AuthTokenNotifier extends StateNotifier<String?> {
  final Ref ref;
  Future<void>? _loading;
  int _revision = 0;

  AuthTokenNotifier(this.ref) : super(null);

  Future<void> _loadToken() async {
    final revision = _revision;
    final token = await ref.read(secureStorageProvider).readData('authToken')
        .timeout(const Duration(seconds: 5));
    if (mounted && revision == _revision) state = token;
  }

  Future<String?> getToken() async {
    if (state != null) return state;
    final loading = _loading ??= _loadToken();
    try {
      await loading;
    } finally {
      if (identical(_loading, loading)) _loading = null;
    }
    return state;
  }

  Future<void> saveToken(String token) async {
    if (token.trim().isEmpty) throw StateError('Missing session token');
    final saved =
        await ref.read(secureStorageProvider).writeData('authToken', token);
    if (!saved)
      throw StateError('Unable to save your session. Please sign in again.');
    _revision++;
    if (mounted) state = token;
    ref.read(authSessionRevisionProvider.notifier).update((value) => value + 1);
  }

  Future<void> clear() async {
    await ref.read(secureStorageProvider).deleteData('authToken');
    _revision++;
    if (mounted) state = null;
    ref.read(authSessionRevisionProvider.notifier).update((value) => value + 1);
  }
}
