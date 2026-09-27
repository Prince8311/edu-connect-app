import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/features/profile/data/datasources/profile_api_service.dart';
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
  final bytes = Uint8List.fromList([1, 2, 3, 4]);
  for (final valid in [true, false]) {
    test('multipart contract and response validation: valid=$valid', () async {
      final dio = Dio();
      addTearDown(() => dio.close(force: true));
      dio.interceptors
          .add(InterceptorsWrapper(onRequest: (options, handler) async {
        expect(options.method, 'POST');
        expect(options.uri.toString(),
            '${Endpoints.apiURL}${Endpoints.updateProfileImage}');
        expect(options.contentType, 'multipart/form-data');
        final form = options.data as FormData;
        expect(form.files.single.key, 'profile_image');
        expect(form.files.single.value.filename, 'photo.png');
        expect(
            await form.files.single.value
                .finalize()
                .expand((chunk) => chunk)
                .toList(),
            bytes);
        handler
            .resolve(Response(requestOptions: options, statusCode: 200, data: {
          'status': 200,
          'message': 'Profile image updated successfully',
          if (valid) 'profile_image': 'new-profile-123.png',
        }));
      }));
      final container = ProviderContainer(overrides: [
        profileApiServiceProvider.overrideWithValue(ProfileApiService(dio)),
      ]);
      addTearDown(container.dispose);
      final result = await container
          .read(profileRepoProvider)
          .updateProfileImage(bytes: bytes, filename: 'photo.png');
      expect(result.isRight(), valid);
      if (valid) {
        expect(
            result
                .getOrElse((_) => throw StateError('Upload failed'))
                .profileImage,
            'new-profile-123.png');
      }
    });
  }

  test('successful upload updates profile and persisted header photo',
      () async {
    final storage = _Storage();
    final repo = _Repo();
    var savedUser =
        jsonEncode({'id': 1, 'type': 'teacher', 'profile_image': 'old.png'});
    when(() => storage.readData('user')).thenAnswer((_) async => savedUser);
    when(() => storage.writeData('user', any())).thenAnswer((invocation) async {
      savedUser = invocation.positionalArguments[1] as String;
      return true;
    });
    when(() => repo.getUserDetails()).thenAnswer((_) async =>
        const Right(UserDetails(id: '1', profileImage: 'old.png')));
    when(() => repo.updateProfileImage(bytes: bytes, filename: 'photo.png'))
        .thenAnswer((_) async => const Right(UpdateProfileImageResponse(
              status: 200,
              profileImage: 'new.png',
            )));
    final container = ProviderContainer(overrides: [
      secureStorageProvider.overrideWithValue(storage),
      profileRepoProvider.overrideWithValue(repo),
    ]);
    addTearDown(container.dispose);
    container.listen(userDetailsNotifierProvider, (_, __) {});
    container.listen(savedUserInfoProvider, (_, __) {});
    await container.read(userDetailsNotifierProvider.future);
    await container.read(savedUserInfoProvider.future);
    final response = await container
        .read(userDetailsNotifierProvider.notifier)
        .updateProfileImage(bytes: bytes, filename: 'photo.png');
    expect(response?.profileImage, 'new.png');
    expect(container.read(userDetailsNotifierProvider).value?.profileImage,
        'new.png');
    expect(jsonDecode(savedUser)['profile_image'], 'new.png');
    expect((await container.read(savedUserInfoProvider.future))?.profileImage,
        'new.png');
  });
}
