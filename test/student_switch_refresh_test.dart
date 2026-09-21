import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:edu_connect/features/home/presentation/providers/schedule_classes_provider.dart';
import 'package:edu_connect/features/profile/data/repositories/profile_repo_impl.dart';
import 'package:edu_connect/features/profile/domain/models/profile_model.dart';
import 'package:edu_connect/features/profile/domain/repositories/profile_repository.dart';
import 'package:edu_connect/features/profile/presentation/providers/profile_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

class _Storage extends Mock implements LocalDB {}

class _Repo extends Mock implements ProfileRepository {}

void main() {
  for (final success in [true, false]) {
    test('student switch success=$success refreshes schedules only on success',
        () async {
      final storage = _Storage();
      final repo = _Repo();
      const request = StudentSwitchRequest(studentId: '2');
      when(() => storage.writeData('authToken', 'student-2'))
          .thenAnswer((_) async => true);
      when(() => repo.switchStudent(requestBody: request)).thenAnswer(
          (_) async => Right(
              success ? const AuthResponse(authToken: 'student-2') : null));
      final calls = <String, int>{};
      void record(Ref ref, String key) {
        calls.update(key, (value) => value + 1, ifAbsent: () => 1);
        if (calls[key]! > 1) {
          expect(ref.read(authTokenProvider), 'student-2');
        }
      }

      final container = ProviderContainer(overrides: [
        secureStorageProvider.overrideWithValue(storage),
        profileRepoProvider.overrideWithValue(repo),
        getScheduleClassesProvider(intent: 'today').overrideWith((ref) async {
          record(ref, 'today');
          return null;
        }),
        getScheduleClassesProvider(intent: 'weekly').overrideWith((ref) async {
          record(ref, 'weekly');
          return null;
        }),
        ongoingClassProvider.overrideWith((ref) async {
          record(ref, 'ongoing');
          return null;
        }),
        getTimeSlotsProvider.overrideWith((ref) async {
          record(ref, 'slots');
          return [];
        }),
      ]);
      addTearDown(container.dispose);
      final providers = <ProviderListenable<dynamic>>[
        getScheduleClassesProvider(intent: 'today'),
        getScheduleClassesProvider(intent: 'weekly'),
        ongoingClassProvider,
        getTimeSlotsProvider,
      ];
      for (final provider in providers) {
        container.listen(provider, (_, __) {});
      }
      await container.pump();
      expect(calls.values, everyElement(1));
      await container.read(studentSwitchProvider(requestBody: request).future);
      await container.pump();
      expect(calls, {
        for (final key in ['today', 'weekly', 'ongoing', 'slots'])
          key: success ? 2 : 1,
      });
    });
  }
}

