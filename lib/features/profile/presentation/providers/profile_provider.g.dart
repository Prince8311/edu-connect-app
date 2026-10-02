// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserDetailsNotifier)
final userDetailsNotifierProvider = UserDetailsNotifierProvider._();

final class UserDetailsNotifierProvider
    extends $AsyncNotifierProvider<UserDetailsNotifier, UserDetails?> {
  UserDetailsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userDetailsNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userDetailsNotifierHash();

  @$internal
  @override
  UserDetailsNotifier create() => UserDetailsNotifier();
}

String _$userDetailsNotifierHash() =>
    r'afe25797b1acb81727742f995682aae351a80d0f';

abstract class _$UserDetailsNotifier extends $AsyncNotifier<UserDetails?> {
  FutureOr<UserDetails?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<UserDetails?>, UserDetails?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UserDetails?>, UserDetails?>,
              AsyncValue<UserDetails?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(sendVerificationOtp)
final sendVerificationOtpProvider = SendVerificationOtpFamily._();

final class SendVerificationOtpProvider
    extends $FunctionalProvider<AsyncValue<bool?>, bool?, FutureOr<bool?>>
    with $FutureModifier<bool?>, $FutureProvider<bool?> {
  SendVerificationOtpProvider._({
    required SendVerificationOtpFamily super.from,
    required OtpResquest super.argument,
  }) : super(
         retry: null,
         name: r'sendVerificationOtpProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$sendVerificationOtpHash();

  @override
  String toString() {
    return r'sendVerificationOtpProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<bool?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool?> create(Ref ref) {
    final argument = this.argument as OtpResquest;
    return sendVerificationOtp(ref, requestBody: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SendVerificationOtpProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$sendVerificationOtpHash() =>
    r'0126b85d2514dc66e9fbc4c0ce3eec87a8d15169';

final class SendVerificationOtpFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<bool?>, OtpResquest> {
  SendVerificationOtpFamily._()
    : super(
        retry: null,
        name: r'sendVerificationOtpProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SendVerificationOtpProvider call({required OtpResquest requestBody}) =>
      SendVerificationOtpProvider._(argument: requestBody, from: this);

  @override
  String toString() => r'sendVerificationOtpProvider';
}

@ProviderFor(verifyOtp)
final verifyOtpProvider = VerifyOtpFamily._();

final class VerifyOtpProvider
    extends $FunctionalProvider<AsyncValue<bool?>, bool?, FutureOr<bool?>>
    with $FutureModifier<bool?>, $FutureProvider<bool?> {
  VerifyOtpProvider._({
    required VerifyOtpFamily super.from,
    required OtpVerifyResquest super.argument,
  }) : super(
         retry: null,
         name: r'verifyOtpProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$verifyOtpHash();

  @override
  String toString() {
    return r'verifyOtpProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<bool?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool?> create(Ref ref) {
    final argument = this.argument as OtpVerifyResquest;
    return verifyOtp(ref, requestBody: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is VerifyOtpProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$verifyOtpHash() => r'981f125f627a77d450b02b9e392d7782ca18d11b';

final class VerifyOtpFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<bool?>, OtpVerifyResquest> {
  VerifyOtpFamily._()
    : super(
        retry: null,
        name: r'verifyOtpProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  VerifyOtpProvider call({required OtpVerifyResquest requestBody}) =>
      VerifyOtpProvider._(argument: requestBody, from: this);

  @override
  String toString() => r'verifyOtpProvider';
}

@ProviderFor(getGuardianStudentList)
final getGuardianStudentListProvider = GetGuardianStudentListFamily._();

final class GetGuardianStudentListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<GuardianStudent>?>,
          List<GuardianStudent>?,
          FutureOr<List<GuardianStudent>?>
        >
    with
        $FutureModifier<List<GuardianStudent>?>,
        $FutureProvider<List<GuardianStudent>?> {
  GetGuardianStudentListProvider._({
    required GetGuardianStudentListFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'getGuardianStudentListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getGuardianStudentListHash();

  @override
  String toString() {
    return r'getGuardianStudentListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<GuardianStudent>?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<GuardianStudent>?> create(Ref ref) {
    final argument = this.argument as String?;
    return getGuardianStudentList(ref, tempToken: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GetGuardianStudentListProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getGuardianStudentListHash() =>
    r'0d383f8b6662a9fe32a4d6c2d2f5b822581cccb5';

final class GetGuardianStudentListFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<GuardianStudent>?>, String?> {
  GetGuardianStudentListFamily._()
    : super(
        retry: null,
        name: r'getGuardianStudentListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetGuardianStudentListProvider call({String? tempToken}) =>
      GetGuardianStudentListProvider._(argument: tempToken, from: this);

  @override
  String toString() => r'getGuardianStudentListProvider';
}

@ProviderFor(studentSwitch)
final studentSwitchProvider = StudentSwitchFamily._();

final class StudentSwitchProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthResponse?>,
          AuthResponse?,
          FutureOr<AuthResponse?>
        >
    with $FutureModifier<AuthResponse?>, $FutureProvider<AuthResponse?> {
  StudentSwitchProvider._({
    required StudentSwitchFamily super.from,
    required StudentSwitchRequest super.argument,
  }) : super(
         retry: null,
         name: r'studentSwitchProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$studentSwitchHash();

  @override
  String toString() {
    return r'studentSwitchProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<AuthResponse?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AuthResponse?> create(Ref ref) {
    final argument = this.argument as StudentSwitchRequest;
    return studentSwitch(ref, requestBody: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is StudentSwitchProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$studentSwitchHash() => r'46e6f04cfd4ae4ebf1a1dc7e5705b43cb8254b40';

final class StudentSwitchFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<AuthResponse?>,
          StudentSwitchRequest
        > {
  StudentSwitchFamily._()
    : super(
        retry: null,
        name: r'studentSwitchProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  StudentSwitchProvider call({required StudentSwitchRequest requestBody}) =>
      StudentSwitchProvider._(argument: requestBody, from: this);

  @override
  String toString() => r'studentSwitchProvider';
}

@ProviderFor(changePassword)
final changePasswordProvider = ChangePasswordFamily._();

final class ChangePasswordProvider
    extends $FunctionalProvider<AsyncValue<bool?>, bool?, FutureOr<bool?>>
    with $FutureModifier<bool?>, $FutureProvider<bool?> {
  ChangePasswordProvider._({
    required ChangePasswordFamily super.from,
    required ChangePasswordRequest super.argument,
  }) : super(
         retry: null,
         name: r'changePasswordProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$changePasswordHash();

  @override
  String toString() {
    return r'changePasswordProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<bool?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool?> create(Ref ref) {
    final argument = this.argument as ChangePasswordRequest;
    return changePassword(ref, requestBody: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ChangePasswordProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$changePasswordHash() => r'ede688ffabce8bc278a718e4d4d53eac00edba42';

final class ChangePasswordFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<bool?>, ChangePasswordRequest> {
  ChangePasswordFamily._()
    : super(
        retry: null,
        name: r'changePasswordProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChangePasswordProvider call({required ChangePasswordRequest requestBody}) =>
      ChangePasswordProvider._(argument: requestBody, from: this);

  @override
  String toString() => r'changePasswordProvider';
}
