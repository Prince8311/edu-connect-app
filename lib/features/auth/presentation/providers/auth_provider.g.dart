// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginHash() => r'3d3e5dbc8ec34f2b074282c74df9703b1f66ca5a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [login].
@ProviderFor(login)
const loginProvider = LoginFamily();

/// See also [login].
class LoginFamily extends Family<AsyncValue<AuthResponse?>> {
  /// See also [login].
  const LoginFamily();

  /// See also [login].
  LoginProvider call({
    required LoginRequest requestBody,
  }) {
    return LoginProvider(
      requestBody: requestBody,
    );
  }

  @override
  LoginProvider getProviderOverride(
    covariant LoginProvider provider,
  ) {
    return call(
      requestBody: provider.requestBody,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'loginProvider';
}

/// See also [login].
class LoginProvider extends AutoDisposeFutureProvider<AuthResponse?> {
  /// See also [login].
  LoginProvider({
    required LoginRequest requestBody,
  }) : this._internal(
          (ref) => login(
            ref as LoginRef,
            requestBody: requestBody,
          ),
          from: loginProvider,
          name: r'loginProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loginHash,
          dependencies: LoginFamily._dependencies,
          allTransitiveDependencies: LoginFamily._allTransitiveDependencies,
          requestBody: requestBody,
        );

  LoginProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestBody,
  }) : super.internal();

  final LoginRequest requestBody;

  @override
  Override overrideWith(
    FutureOr<AuthResponse?> Function(LoginRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LoginProvider._internal(
        (ref) => create(ref as LoginRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        requestBody: requestBody,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AuthResponse?> createElement() {
    return _LoginProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginProvider && other.requestBody == requestBody;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, requestBody.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LoginRef on AutoDisposeFutureProviderRef<AuthResponse?> {
  /// The parameter `requestBody` of this provider.
  LoginRequest get requestBody;
}

class _LoginProviderElement
    extends AutoDisposeFutureProviderElement<AuthResponse?> with LoginRef {
  _LoginProviderElement(super.provider);

  @override
  LoginRequest get requestBody => (origin as LoginProvider).requestBody;
}

String _$biometricLoginHash() => r'baab722efdb4fe38999358de7e80b501fc1bc024';

/// See also [biometricLogin].
@ProviderFor(biometricLogin)
const biometricLoginProvider = BiometricLoginFamily();

/// See also [biometricLogin].
class BiometricLoginFamily extends Family<AsyncValue<AuthResponse?>> {
  /// See also [biometricLogin].
  const BiometricLoginFamily();

  /// See also [biometricLogin].
  BiometricLoginProvider call({
    required BiometricLoginRequest requestBody,
  }) {
    return BiometricLoginProvider(
      requestBody: requestBody,
    );
  }

  @override
  BiometricLoginProvider getProviderOverride(
    covariant BiometricLoginProvider provider,
  ) {
    return call(
      requestBody: provider.requestBody,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'biometricLoginProvider';
}

/// See also [biometricLogin].
class BiometricLoginProvider extends AutoDisposeFutureProvider<AuthResponse?> {
  /// See also [biometricLogin].
  BiometricLoginProvider({
    required BiometricLoginRequest requestBody,
  }) : this._internal(
          (ref) => biometricLogin(
            ref as BiometricLoginRef,
            requestBody: requestBody,
          ),
          from: biometricLoginProvider,
          name: r'biometricLoginProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$biometricLoginHash,
          dependencies: BiometricLoginFamily._dependencies,
          allTransitiveDependencies:
              BiometricLoginFamily._allTransitiveDependencies,
          requestBody: requestBody,
        );

  BiometricLoginProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestBody,
  }) : super.internal();

  final BiometricLoginRequest requestBody;

  @override
  Override overrideWith(
    FutureOr<AuthResponse?> Function(BiometricLoginRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BiometricLoginProvider._internal(
        (ref) => create(ref as BiometricLoginRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        requestBody: requestBody,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AuthResponse?> createElement() {
    return _BiometricLoginProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BiometricLoginProvider && other.requestBody == requestBody;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, requestBody.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BiometricLoginRef on AutoDisposeFutureProviderRef<AuthResponse?> {
  /// The parameter `requestBody` of this provider.
  BiometricLoginRequest get requestBody;
}

class _BiometricLoginProviderElement
    extends AutoDisposeFutureProviderElement<AuthResponse?>
    with BiometricLoginRef {
  _BiometricLoginProviderElement(super.provider);

  @override
  BiometricLoginRequest get requestBody =>
      (origin as BiometricLoginProvider).requestBody;
}

String _$sendOtpHash() => r'96bfc5bf887d38a23992432a492fd09872294379';

/// See also [sendOtp].
@ProviderFor(sendOtp)
const sendOtpProvider = SendOtpFamily();

/// See also [sendOtp].
class SendOtpFamily extends Family<AsyncValue<bool?>> {
  /// See also [sendOtp].
  const SendOtpFamily();

  /// See also [sendOtp].
  SendOtpProvider call({
    required OtpRequest requestBody,
  }) {
    return SendOtpProvider(
      requestBody: requestBody,
    );
  }

  @override
  SendOtpProvider getProviderOverride(
    covariant SendOtpProvider provider,
  ) {
    return call(
      requestBody: provider.requestBody,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sendOtpProvider';
}

/// See also [sendOtp].
class SendOtpProvider extends AutoDisposeFutureProvider<bool?> {
  /// See also [sendOtp].
  SendOtpProvider({
    required OtpRequest requestBody,
  }) : this._internal(
          (ref) => sendOtp(
            ref as SendOtpRef,
            requestBody: requestBody,
          ),
          from: sendOtpProvider,
          name: r'sendOtpProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sendOtpHash,
          dependencies: SendOtpFamily._dependencies,
          allTransitiveDependencies: SendOtpFamily._allTransitiveDependencies,
          requestBody: requestBody,
        );

  SendOtpProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestBody,
  }) : super.internal();

  final OtpRequest requestBody;

  @override
  Override overrideWith(
    FutureOr<bool?> Function(SendOtpRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SendOtpProvider._internal(
        (ref) => create(ref as SendOtpRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        requestBody: requestBody,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool?> createElement() {
    return _SendOtpProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SendOtpProvider && other.requestBody == requestBody;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, requestBody.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SendOtpRef on AutoDisposeFutureProviderRef<bool?> {
  /// The parameter `requestBody` of this provider.
  OtpRequest get requestBody;
}

class _SendOtpProviderElement extends AutoDisposeFutureProviderElement<bool?>
    with SendOtpRef {
  _SendOtpProviderElement(super.provider);

  @override
  OtpRequest get requestBody => (origin as SendOtpProvider).requestBody;
}

String _$roleSelectHash() => r'f51115af4c99ad7e90d43e50c559a29c74c47a12';

/// See also [roleSelect].
@ProviderFor(roleSelect)
const roleSelectProvider = RoleSelectFamily();

/// See also [roleSelect].
class RoleSelectFamily extends Family<AsyncValue<AuthResponse?>> {
  /// See also [roleSelect].
  const RoleSelectFamily();

  /// See also [roleSelect].
  RoleSelectProvider call({
    required RoleSelectRequest requestBody,
  }) {
    return RoleSelectProvider(
      requestBody: requestBody,
    );
  }

  @override
  RoleSelectProvider getProviderOverride(
    covariant RoleSelectProvider provider,
  ) {
    return call(
      requestBody: provider.requestBody,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'roleSelectProvider';
}

/// See also [roleSelect].
class RoleSelectProvider extends AutoDisposeFutureProvider<AuthResponse?> {
  /// See also [roleSelect].
  RoleSelectProvider({
    required RoleSelectRequest requestBody,
  }) : this._internal(
          (ref) => roleSelect(
            ref as RoleSelectRef,
            requestBody: requestBody,
          ),
          from: roleSelectProvider,
          name: r'roleSelectProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$roleSelectHash,
          dependencies: RoleSelectFamily._dependencies,
          allTransitiveDependencies:
              RoleSelectFamily._allTransitiveDependencies,
          requestBody: requestBody,
        );

  RoleSelectProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestBody,
  }) : super.internal();

  final RoleSelectRequest requestBody;

  @override
  Override overrideWith(
    FutureOr<AuthResponse?> Function(RoleSelectRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RoleSelectProvider._internal(
        (ref) => create(ref as RoleSelectRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        requestBody: requestBody,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AuthResponse?> createElement() {
    return _RoleSelectProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RoleSelectProvider && other.requestBody == requestBody;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, requestBody.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RoleSelectRef on AutoDisposeFutureProviderRef<AuthResponse?> {
  /// The parameter `requestBody` of this provider.
  RoleSelectRequest get requestBody;
}

class _RoleSelectProviderElement
    extends AutoDisposeFutureProviderElement<AuthResponse?> with RoleSelectRef {
  _RoleSelectProviderElement(super.provider);

  @override
  RoleSelectRequest get requestBody =>
      (origin as RoleSelectProvider).requestBody;
}

String _$studentSelectHash() => r'c379e42c34f0b9a971981bee2a986e215036a91f';

/// See also [studentSelect].
@ProviderFor(studentSelect)
const studentSelectProvider = StudentSelectFamily();

/// See also [studentSelect].
class StudentSelectFamily extends Family<AsyncValue<AuthResponse?>> {
  /// See also [studentSelect].
  const StudentSelectFamily();

  /// See also [studentSelect].
  StudentSelectProvider call({
    required StudentSelectRequest requestBody,
  }) {
    return StudentSelectProvider(
      requestBody: requestBody,
    );
  }

  @override
  StudentSelectProvider getProviderOverride(
    covariant StudentSelectProvider provider,
  ) {
    return call(
      requestBody: provider.requestBody,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'studentSelectProvider';
}

/// See also [studentSelect].
class StudentSelectProvider extends AutoDisposeFutureProvider<AuthResponse?> {
  /// See also [studentSelect].
  StudentSelectProvider({
    required StudentSelectRequest requestBody,
  }) : this._internal(
          (ref) => studentSelect(
            ref as StudentSelectRef,
            requestBody: requestBody,
          ),
          from: studentSelectProvider,
          name: r'studentSelectProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$studentSelectHash,
          dependencies: StudentSelectFamily._dependencies,
          allTransitiveDependencies:
              StudentSelectFamily._allTransitiveDependencies,
          requestBody: requestBody,
        );

  StudentSelectProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestBody,
  }) : super.internal();

  final StudentSelectRequest requestBody;

  @override
  Override overrideWith(
    FutureOr<AuthResponse?> Function(StudentSelectRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StudentSelectProvider._internal(
        (ref) => create(ref as StudentSelectRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        requestBody: requestBody,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AuthResponse?> createElement() {
    return _StudentSelectProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StudentSelectProvider && other.requestBody == requestBody;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, requestBody.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StudentSelectRef on AutoDisposeFutureProviderRef<AuthResponse?> {
  /// The parameter `requestBody` of this provider.
  StudentSelectRequest get requestBody;
}

class _StudentSelectProviderElement
    extends AutoDisposeFutureProviderElement<AuthResponse?>
    with StudentSelectRef {
  _StudentSelectProviderElement(super.provider);

  @override
  StudentSelectRequest get requestBody =>
      (origin as StudentSelectProvider).requestBody;
}

String _$getGuardianStudentsHash() =>
    r'eea16a9054cff41c2b572a6d912a58158ed28d70';

/// See also [getGuardianStudents].
@ProviderFor(getGuardianStudents)
const getGuardianStudentsProvider = GetGuardianStudentsFamily();

/// See also [getGuardianStudents].
class GetGuardianStudentsFamily
    extends Family<AsyncValue<List<GuardianStudent>?>> {
  /// See also [getGuardianStudents].
  const GetGuardianStudentsFamily();

  /// See also [getGuardianStudents].
  GetGuardianStudentsProvider call({
    String? tempToken,
  }) {
    return GetGuardianStudentsProvider(
      tempToken: tempToken,
    );
  }

  @override
  GetGuardianStudentsProvider getProviderOverride(
    covariant GetGuardianStudentsProvider provider,
  ) {
    return call(
      tempToken: provider.tempToken,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getGuardianStudentsProvider';
}

/// See also [getGuardianStudents].
class GetGuardianStudentsProvider
    extends AutoDisposeFutureProvider<List<GuardianStudent>?> {
  /// See also [getGuardianStudents].
  GetGuardianStudentsProvider({
    String? tempToken,
  }) : this._internal(
          (ref) => getGuardianStudents(
            ref as GetGuardianStudentsRef,
            tempToken: tempToken,
          ),
          from: getGuardianStudentsProvider,
          name: r'getGuardianStudentsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getGuardianStudentsHash,
          dependencies: GetGuardianStudentsFamily._dependencies,
          allTransitiveDependencies:
              GetGuardianStudentsFamily._allTransitiveDependencies,
          tempToken: tempToken,
        );

  GetGuardianStudentsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tempToken,
  }) : super.internal();

  final String? tempToken;

  @override
  Override overrideWith(
    FutureOr<List<GuardianStudent>?> Function(GetGuardianStudentsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetGuardianStudentsProvider._internal(
        (ref) => create(ref as GetGuardianStudentsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tempToken: tempToken,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<GuardianStudent>?> createElement() {
    return _GetGuardianStudentsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetGuardianStudentsProvider && other.tempToken == tempToken;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tempToken.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetGuardianStudentsRef
    on AutoDisposeFutureProviderRef<List<GuardianStudent>?> {
  /// The parameter `tempToken` of this provider.
  String? get tempToken;
}

class _GetGuardianStudentsProviderElement
    extends AutoDisposeFutureProviderElement<List<GuardianStudent>?>
    with GetGuardianStudentsRef {
  _GetGuardianStudentsProviderElement(super.provider);

  @override
  String? get tempToken => (origin as GetGuardianStudentsProvider).tempToken;
}

String _$getBiometricUsersHash() => r'3adc809355b33570417ae7923e28ac2251670163';

/// See also [getBiometricUsers].
@ProviderFor(getBiometricUsers)
const getBiometricUsersProvider = GetBiometricUsersFamily();

/// See also [getBiometricUsers].
class GetBiometricUsersFamily
    extends Family<AsyncValue<List<BiometricUserInfo>?>> {
  /// See also [getBiometricUsers].
  const GetBiometricUsersFamily();

  /// See also [getBiometricUsers].
  GetBiometricUsersProvider call({
    String? deviceId,
    String? deviceToken,
    String? biometricType,
  }) {
    return GetBiometricUsersProvider(
      deviceId: deviceId,
      deviceToken: deviceToken,
      biometricType: biometricType,
    );
  }

  @override
  GetBiometricUsersProvider getProviderOverride(
    covariant GetBiometricUsersProvider provider,
  ) {
    return call(
      deviceId: provider.deviceId,
      deviceToken: provider.deviceToken,
      biometricType: provider.biometricType,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getBiometricUsersProvider';
}

/// See also [getBiometricUsers].
class GetBiometricUsersProvider
    extends AutoDisposeFutureProvider<List<BiometricUserInfo>?> {
  /// See also [getBiometricUsers].
  GetBiometricUsersProvider({
    String? deviceId,
    String? deviceToken,
    String? biometricType,
  }) : this._internal(
          (ref) => getBiometricUsers(
            ref as GetBiometricUsersRef,
            deviceId: deviceId,
            deviceToken: deviceToken,
            biometricType: biometricType,
          ),
          from: getBiometricUsersProvider,
          name: r'getBiometricUsersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getBiometricUsersHash,
          dependencies: GetBiometricUsersFamily._dependencies,
          allTransitiveDependencies:
              GetBiometricUsersFamily._allTransitiveDependencies,
          deviceId: deviceId,
          deviceToken: deviceToken,
          biometricType: biometricType,
        );

  GetBiometricUsersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.deviceId,
    required this.deviceToken,
    required this.biometricType,
  }) : super.internal();

  final String? deviceId;
  final String? deviceToken;
  final String? biometricType;

  @override
  Override overrideWith(
    FutureOr<List<BiometricUserInfo>?> Function(GetBiometricUsersRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetBiometricUsersProvider._internal(
        (ref) => create(ref as GetBiometricUsersRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        deviceId: deviceId,
        deviceToken: deviceToken,
        biometricType: biometricType,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<BiometricUserInfo>?> createElement() {
    return _GetBiometricUsersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetBiometricUsersProvider &&
        other.deviceId == deviceId &&
        other.deviceToken == deviceToken &&
        other.biometricType == biometricType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, deviceId.hashCode);
    hash = _SystemHash.combine(hash, deviceToken.hashCode);
    hash = _SystemHash.combine(hash, biometricType.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetBiometricUsersRef
    on AutoDisposeFutureProviderRef<List<BiometricUserInfo>?> {
  /// The parameter `deviceId` of this provider.
  String? get deviceId;

  /// The parameter `deviceToken` of this provider.
  String? get deviceToken;

  /// The parameter `biometricType` of this provider.
  String? get biometricType;
}

class _GetBiometricUsersProviderElement
    extends AutoDisposeFutureProviderElement<List<BiometricUserInfo>?>
    with GetBiometricUsersRef {
  _GetBiometricUsersProviderElement(super.provider);

  @override
  String? get deviceId => (origin as GetBiometricUsersProvider).deviceId;
  @override
  String? get deviceToken => (origin as GetBiometricUsersProvider).deviceToken;
  @override
  String? get biometricType =>
      (origin as GetBiometricUsersProvider).biometricType;
}

String _$savedUserInfoHash() => r'98914033ae1f7ed1dba44bf29c6cefb2c73b4122';

/// See also [savedUserInfo].
@ProviderFor(savedUserInfo)
final savedUserInfoProvider = AutoDisposeFutureProvider<UserInfo?>.internal(
  savedUserInfo,
  name: r'savedUserInfoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$savedUserInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SavedUserInfoRef = AutoDisposeFutureProviderRef<UserInfo?>;
String _$logoutHash() => r'8455cc66ddd1a51a9efa9104151df5432a00d54c';

/// See also [logout].
@ProviderFor(logout)
final logoutProvider = AutoDisposeFutureProvider<bool?>.internal(
  logout,
  name: r'logoutProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$logoutHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LogoutRef = AutoDisposeFutureProviderRef<bool?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
