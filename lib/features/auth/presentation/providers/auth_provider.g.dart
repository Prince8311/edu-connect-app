// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(login)
final loginProvider = LoginFamily._();

final class LoginProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthResponse?>,
          AuthResponse?,
          FutureOr<AuthResponse?>
        >
    with $FutureModifier<AuthResponse?>, $FutureProvider<AuthResponse?> {
  LoginProvider._({
    required LoginFamily super.from,
    required LoginRequest super.argument,
  }) : super(
         retry: null,
         name: r'loginProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$loginHash();

  @override
  String toString() {
    return r'loginProvider'
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
    final argument = this.argument as LoginRequest;
    return login(ref, requestBody: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$loginHash() => r'5fcfdc2cd1157d3fea2e7034c127c498fc646291';

final class LoginFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<AuthResponse?>, LoginRequest> {
  LoginFamily._()
    : super(
        retry: null,
        name: r'loginProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LoginProvider call({required LoginRequest requestBody}) =>
      LoginProvider._(argument: requestBody, from: this);

  @override
  String toString() => r'loginProvider';
}

@ProviderFor(biometricLogin)
final biometricLoginProvider = BiometricLoginFamily._();

final class BiometricLoginProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthResponse?>,
          AuthResponse?,
          FutureOr<AuthResponse?>
        >
    with $FutureModifier<AuthResponse?>, $FutureProvider<AuthResponse?> {
  BiometricLoginProvider._({
    required BiometricLoginFamily super.from,
    required BiometricLoginRequest super.argument,
  }) : super(
         retry: null,
         name: r'biometricLoginProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$biometricLoginHash();

  @override
  String toString() {
    return r'biometricLoginProvider'
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
    final argument = this.argument as BiometricLoginRequest;
    return biometricLogin(ref, requestBody: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is BiometricLoginProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$biometricLoginHash() => r'e3930f38251ae2efef50680baadd06aa40fc581d';

final class BiometricLoginFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<AuthResponse?>,
          BiometricLoginRequest
        > {
  BiometricLoginFamily._()
    : super(
        retry: null,
        name: r'biometricLoginProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BiometricLoginProvider call({required BiometricLoginRequest requestBody}) =>
      BiometricLoginProvider._(argument: requestBody, from: this);

  @override
  String toString() => r'biometricLoginProvider';
}

@ProviderFor(sendOtp)
final sendOtpProvider = SendOtpFamily._();

final class SendOtpProvider
    extends $FunctionalProvider<AsyncValue<bool?>, bool?, FutureOr<bool?>>
    with $FutureModifier<bool?>, $FutureProvider<bool?> {
  SendOtpProvider._({
    required SendOtpFamily super.from,
    required OtpRequest super.argument,
  }) : super(
         retry: null,
         name: r'sendOtpProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$sendOtpHash();

  @override
  String toString() {
    return r'sendOtpProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<bool?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool?> create(Ref ref) {
    final argument = this.argument as OtpRequest;
    return sendOtp(ref, requestBody: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SendOtpProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$sendOtpHash() => r'96bfc5bf887d38a23992432a492fd09872294379';

final class SendOtpFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<bool?>, OtpRequest> {
  SendOtpFamily._()
    : super(
        retry: null,
        name: r'sendOtpProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SendOtpProvider call({required OtpRequest requestBody}) =>
      SendOtpProvider._(argument: requestBody, from: this);

  @override
  String toString() => r'sendOtpProvider';
}

@ProviderFor(roleSelect)
final roleSelectProvider = RoleSelectFamily._();

final class RoleSelectProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthResponse?>,
          AuthResponse?,
          FutureOr<AuthResponse?>
        >
    with $FutureModifier<AuthResponse?>, $FutureProvider<AuthResponse?> {
  RoleSelectProvider._({
    required RoleSelectFamily super.from,
    required RoleSelectRequest super.argument,
  }) : super(
         retry: null,
         name: r'roleSelectProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$roleSelectHash();

  @override
  String toString() {
    return r'roleSelectProvider'
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
    final argument = this.argument as RoleSelectRequest;
    return roleSelect(ref, requestBody: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is RoleSelectProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$roleSelectHash() => r'b697df338eb7c441d13fd73d5837d41f59454e50';

final class RoleSelectFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<AuthResponse?>, RoleSelectRequest> {
  RoleSelectFamily._()
    : super(
        retry: null,
        name: r'roleSelectProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RoleSelectProvider call({required RoleSelectRequest requestBody}) =>
      RoleSelectProvider._(argument: requestBody, from: this);

  @override
  String toString() => r'roleSelectProvider';
}

@ProviderFor(studentSelect)
final studentSelectProvider = StudentSelectFamily._();

final class StudentSelectProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthResponse?>,
          AuthResponse?,
          FutureOr<AuthResponse?>
        >
    with $FutureModifier<AuthResponse?>, $FutureProvider<AuthResponse?> {
  StudentSelectProvider._({
    required StudentSelectFamily super.from,
    required StudentSelectRequest super.argument,
  }) : super(
         retry: null,
         name: r'studentSelectProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$studentSelectHash();

  @override
  String toString() {
    return r'studentSelectProvider'
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
    final argument = this.argument as StudentSelectRequest;
    return studentSelect(ref, requestBody: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is StudentSelectProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$studentSelectHash() => r'28ef60f94d5b112a4eec6c71a96070f9268d349a';

final class StudentSelectFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<AuthResponse?>,
          StudentSelectRequest
        > {
  StudentSelectFamily._()
    : super(
        retry: null,
        name: r'studentSelectProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  StudentSelectProvider call({required StudentSelectRequest requestBody}) =>
      StudentSelectProvider._(argument: requestBody, from: this);

  @override
  String toString() => r'studentSelectProvider';
}

@ProviderFor(getGuardianStudents)
final getGuardianStudentsProvider = GetGuardianStudentsFamily._();

final class GetGuardianStudentsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<GuardianStudent>?>,
          List<GuardianStudent>?,
          FutureOr<List<GuardianStudent>?>
        >
    with
        $FutureModifier<List<GuardianStudent>?>,
        $FutureProvider<List<GuardianStudent>?> {
  GetGuardianStudentsProvider._({
    required GetGuardianStudentsFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'getGuardianStudentsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getGuardianStudentsHash();

  @override
  String toString() {
    return r'getGuardianStudentsProvider'
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
    return getGuardianStudents(ref, tempToken: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GetGuardianStudentsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getGuardianStudentsHash() =>
    r'eea16a9054cff41c2b572a6d912a58158ed28d70';

final class GetGuardianStudentsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<GuardianStudent>?>, String?> {
  GetGuardianStudentsFamily._()
    : super(
        retry: null,
        name: r'getGuardianStudentsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetGuardianStudentsProvider call({String? tempToken}) =>
      GetGuardianStudentsProvider._(argument: tempToken, from: this);

  @override
  String toString() => r'getGuardianStudentsProvider';
}

@ProviderFor(getBiometricUsers)
final getBiometricUsersProvider = GetBiometricUsersFamily._();

final class GetBiometricUsersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<BiometricUserInfo>?>,
          List<BiometricUserInfo>?,
          FutureOr<List<BiometricUserInfo>?>
        >
    with
        $FutureModifier<List<BiometricUserInfo>?>,
        $FutureProvider<List<BiometricUserInfo>?> {
  GetBiometricUsersProvider._({
    required GetBiometricUsersFamily super.from,
    required ({String? deviceId, String? deviceToken, String? biometricType})
    super.argument,
  }) : super(
         retry: null,
         name: r'getBiometricUsersProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getBiometricUsersHash();

  @override
  String toString() {
    return r'getBiometricUsersProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<BiometricUserInfo>?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<BiometricUserInfo>?> create(Ref ref) {
    final argument =
        this.argument
            as ({String? deviceId, String? deviceToken, String? biometricType});
    return getBiometricUsers(
      ref,
      deviceId: argument.deviceId,
      deviceToken: argument.deviceToken,
      biometricType: argument.biometricType,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GetBiometricUsersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getBiometricUsersHash() => r'3adc809355b33570417ae7923e28ac2251670163';

final class GetBiometricUsersFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<BiometricUserInfo>?>,
          ({String? deviceId, String? deviceToken, String? biometricType})
        > {
  GetBiometricUsersFamily._()
    : super(
        retry: null,
        name: r'getBiometricUsersProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetBiometricUsersProvider call({
    String? deviceId,
    String? deviceToken,
    String? biometricType,
  }) => GetBiometricUsersProvider._(
    argument: (
      deviceId: deviceId,
      deviceToken: deviceToken,
      biometricType: biometricType,
    ),
    from: this,
  );

  @override
  String toString() => r'getBiometricUsersProvider';
}

@ProviderFor(savedUserInfo)
final savedUserInfoProvider = SavedUserInfoProvider._();

final class SavedUserInfoProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserInfo?>,
          UserInfo?,
          FutureOr<UserInfo?>
        >
    with $FutureModifier<UserInfo?>, $FutureProvider<UserInfo?> {
  SavedUserInfoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'savedUserInfoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$savedUserInfoHash();

  @$internal
  @override
  $FutureProviderElement<UserInfo?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<UserInfo?> create(Ref ref) {
    return savedUserInfo(ref);
  }
}

String _$savedUserInfoHash() => r'98914033ae1f7ed1dba44bf29c6cefb2c73b4122';

@ProviderFor(logout)
final logoutProvider = LogoutProvider._();

final class LogoutProvider
    extends $FunctionalProvider<AsyncValue<bool?>, bool?, FutureOr<bool?>>
    with $FutureModifier<bool?>, $FutureProvider<bool?> {
  LogoutProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'logoutProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$logoutHash();

  @$internal
  @override
  $FutureProviderElement<bool?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool?> create(Ref ref) {
    return logout(ref);
  }
}

String _$logoutHash() => r'2fdc598b7d60f9998f576236130783fd9dfbc595';
