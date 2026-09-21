import 'dart:async';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

class _Storage extends Mock implements LocalDB {}

void main() {
  late _Storage storage;
  late ProviderContainer container;
  setUp(() {
    storage = _Storage();
    container = ProviderContainer(
        overrides: [secureStorageProvider.overrideWithValue(storage)]);
  });
  tearDown(() => container.dispose());

  test('saved session survives a new provider container', () async {
    String? persisted;
    when(() => storage.writeData('authToken', 'session')).thenAnswer((_) async {
      persisted = 'session';
      return true;
    });
    when(() => storage.readData('authToken'))
        .thenAnswer((_) async => persisted);
    await container.read(authTokenProvider.notifier).saveToken('session');
    final restarted = ProviderContainer(
        overrides: [secureStorageProvider.overrideWithValue(storage)]);
    addTearDown(restarted.dispose);
    expect(
        await restarted.read(authTokenProvider.notifier).getToken(), 'session');
  });

  test('concurrent startup reads share one storage request', () async {
    final pending = Completer<String?>();
    when(() => storage.readData('authToken')).thenAnswer((_) => pending.future);
    final notifier = container.read(authTokenProvider.notifier);
    final first = notifier.getToken();
    final second = notifier.getToken();
    pending.complete('session');
    expect(await first, 'session');
    expect(await second, 'session');
    verify(() => storage.readData('authToken')).called(1);
  });

  test('old storage read cannot overwrite a newly saved login', () async {
    final pending = Completer<String?>();
    when(() => storage.readData('authToken')).thenAnswer((_) => pending.future);
    when(() => storage.writeData('authToken', 'new-session'))
        .thenAnswer((_) async => true);
    final notifier = container.read(authTokenProvider.notifier);
    final read = notifier.getToken();
    await notifier.saveToken('new-session');
    pending.complete(null);
    expect(await read, 'new-session');
  });

  test('failed persistence is not treated as a saved session', () async {
    when(() => storage.writeData('authToken', 'session'))
        .thenAnswer((_) async => false);
    await expectLater(
        container.read(authTokenProvider.notifier).saveToken('session'),
        throwsStateError);
    expect(container.read(authTokenProvider), isNull);
  });

  test('pending restoration cannot restore a logged out session', () async {
    final pending = Completer<String?>();
    when(() => storage.readData('authToken')).thenAnswer((_) => pending.future);
    when(() => storage.deleteData('authToken')).thenAnswer((_) async {});
    final notifier = container.read(authTokenProvider.notifier);
    final read = notifier.getToken();
    await notifier.clear();
    pending.complete('old-session');
    expect(await read, isNull);
  });
}
