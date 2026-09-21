// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sendVerificationOtpHash() =>
    r'0126b85d2514dc66e9fbc4c0ce3eec87a8d15169';

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

/// See also [sendVerificationOtp].
@ProviderFor(sendVerificationOtp)
const sendVerificationOtpProvider = SendVerificationOtpFamily();

/// See also [sendVerificationOtp].
class SendVerificationOtpFamily extends Family<AsyncValue<bool?>> {
  /// See also [sendVerificationOtp].
  const SendVerificationOtpFamily();

  /// See also [sendVerificationOtp].
  SendVerificationOtpProvider call({
    required OtpResquest requestBody,
  }) {
    return SendVerificationOtpProvider(
      requestBody: requestBody,
    );
  }

  @override
  SendVerificationOtpProvider getProviderOverride(
    covariant SendVerificationOtpProvider provider,
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
  String? get name => r'sendVerificationOtpProvider';
}

/// See also [sendVerificationOtp].
class SendVerificationOtpProvider extends AutoDisposeFutureProvider<bool?> {
  /// See also [sendVerificationOtp].
  SendVerificationOtpProvider({
    required OtpResquest requestBody,
  }) : this._internal(
          (ref) => sendVerificationOtp(
            ref as SendVerificationOtpRef,
            requestBody: requestBody,
          ),
          from: sendVerificationOtpProvider,
          name: r'sendVerificationOtpProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sendVerificationOtpHash,
          dependencies: SendVerificationOtpFamily._dependencies,
          allTransitiveDependencies:
              SendVerificationOtpFamily._allTransitiveDependencies,
          requestBody: requestBody,
        );

  SendVerificationOtpProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestBody,
  }) : super.internal();

  final OtpResquest requestBody;

  @override
  Override overrideWith(
    FutureOr<bool?> Function(SendVerificationOtpRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SendVerificationOtpProvider._internal(
        (ref) => create(ref as SendVerificationOtpRef),
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
    return _SendVerificationOtpProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SendVerificationOtpProvider &&
        other.requestBody == requestBody;
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
mixin SendVerificationOtpRef on AutoDisposeFutureProviderRef<bool?> {
  /// The parameter `requestBody` of this provider.
  OtpResquest get requestBody;
}

class _SendVerificationOtpProviderElement
    extends AutoDisposeFutureProviderElement<bool?>
    with SendVerificationOtpRef {
  _SendVerificationOtpProviderElement(super.provider);

  @override
  OtpResquest get requestBody =>
      (origin as SendVerificationOtpProvider).requestBody;
}

String _$verifyOtpHash() => r'981f125f627a77d450b02b9e392d7782ca18d11b';

/// See also [verifyOtp].
@ProviderFor(verifyOtp)
const verifyOtpProvider = VerifyOtpFamily();

/// See also [verifyOtp].
class VerifyOtpFamily extends Family<AsyncValue<bool?>> {
  /// See also [verifyOtp].
  const VerifyOtpFamily();

  /// See also [verifyOtp].
  VerifyOtpProvider call({
    required OtpVerifyResquest requestBody,
  }) {
    return VerifyOtpProvider(
      requestBody: requestBody,
    );
  }

  @override
  VerifyOtpProvider getProviderOverride(
    covariant VerifyOtpProvider provider,
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
  String? get name => r'verifyOtpProvider';
}

/// See also [verifyOtp].
class VerifyOtpProvider extends AutoDisposeFutureProvider<bool?> {
  /// See also [verifyOtp].
  VerifyOtpProvider({
    required OtpVerifyResquest requestBody,
  }) : this._internal(
          (ref) => verifyOtp(
            ref as VerifyOtpRef,
            requestBody: requestBody,
          ),
          from: verifyOtpProvider,
          name: r'verifyOtpProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$verifyOtpHash,
          dependencies: VerifyOtpFamily._dependencies,
          allTransitiveDependencies: VerifyOtpFamily._allTransitiveDependencies,
          requestBody: requestBody,
        );

  VerifyOtpProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestBody,
  }) : super.internal();

  final OtpVerifyResquest requestBody;

  @override
  Override overrideWith(
    FutureOr<bool?> Function(VerifyOtpRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: VerifyOtpProvider._internal(
        (ref) => create(ref as VerifyOtpRef),
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
    return _VerifyOtpProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VerifyOtpProvider && other.requestBody == requestBody;
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
mixin VerifyOtpRef on AutoDisposeFutureProviderRef<bool?> {
  /// The parameter `requestBody` of this provider.
  OtpVerifyResquest get requestBody;
}

class _VerifyOtpProviderElement extends AutoDisposeFutureProviderElement<bool?>
    with VerifyOtpRef {
  _VerifyOtpProviderElement(super.provider);

  @override
  OtpVerifyResquest get requestBody =>
      (origin as VerifyOtpProvider).requestBody;
}

String _$getGuardianStudentListHash() =>
    r'0d383f8b6662a9fe32a4d6c2d2f5b822581cccb5';

/// See also [getGuardianStudentList].
@ProviderFor(getGuardianStudentList)
const getGuardianStudentListProvider = GetGuardianStudentListFamily();

/// See also [getGuardianStudentList].
class GetGuardianStudentListFamily
    extends Family<AsyncValue<List<GuardianStudent>?>> {
  /// See also [getGuardianStudentList].
  const GetGuardianStudentListFamily();

  /// See also [getGuardianStudentList].
  GetGuardianStudentListProvider call({
    String? tempToken,
  }) {
    return GetGuardianStudentListProvider(
      tempToken: tempToken,
    );
  }

  @override
  GetGuardianStudentListProvider getProviderOverride(
    covariant GetGuardianStudentListProvider provider,
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
  String? get name => r'getGuardianStudentListProvider';
}

/// See also [getGuardianStudentList].
class GetGuardianStudentListProvider
    extends AutoDisposeFutureProvider<List<GuardianStudent>?> {
  /// See also [getGuardianStudentList].
  GetGuardianStudentListProvider({
    String? tempToken,
  }) : this._internal(
          (ref) => getGuardianStudentList(
            ref as GetGuardianStudentListRef,
            tempToken: tempToken,
          ),
          from: getGuardianStudentListProvider,
          name: r'getGuardianStudentListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getGuardianStudentListHash,
          dependencies: GetGuardianStudentListFamily._dependencies,
          allTransitiveDependencies:
              GetGuardianStudentListFamily._allTransitiveDependencies,
          tempToken: tempToken,
        );

  GetGuardianStudentListProvider._internal(
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
    FutureOr<List<GuardianStudent>?> Function(
            GetGuardianStudentListRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetGuardianStudentListProvider._internal(
        (ref) => create(ref as GetGuardianStudentListRef),
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
    return _GetGuardianStudentListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetGuardianStudentListProvider &&
        other.tempToken == tempToken;
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
mixin GetGuardianStudentListRef
    on AutoDisposeFutureProviderRef<List<GuardianStudent>?> {
  /// The parameter `tempToken` of this provider.
  String? get tempToken;
}

class _GetGuardianStudentListProviderElement
    extends AutoDisposeFutureProviderElement<List<GuardianStudent>?>
    with GetGuardianStudentListRef {
  _GetGuardianStudentListProviderElement(super.provider);

  @override
  String? get tempToken => (origin as GetGuardianStudentListProvider).tempToken;
}

String _$studentSwitchHash() => r'46e6f04cfd4ae4ebf1a1dc7e5705b43cb8254b40';

/// See also [studentSwitch].
@ProviderFor(studentSwitch)
const studentSwitchProvider = StudentSwitchFamily();

/// See also [studentSwitch].
class StudentSwitchFamily extends Family<AsyncValue<AuthResponse?>> {
  /// See also [studentSwitch].
  const StudentSwitchFamily();

  /// See also [studentSwitch].
  StudentSwitchProvider call({
    required StudentSwitchRequest requestBody,
  }) {
    return StudentSwitchProvider(
      requestBody: requestBody,
    );
  }

  @override
  StudentSwitchProvider getProviderOverride(
    covariant StudentSwitchProvider provider,
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
  String? get name => r'studentSwitchProvider';
}

/// See also [studentSwitch].
class StudentSwitchProvider extends AutoDisposeFutureProvider<AuthResponse?> {
  /// See also [studentSwitch].
  StudentSwitchProvider({
    required StudentSwitchRequest requestBody,
  }) : this._internal(
          (ref) => studentSwitch(
            ref as StudentSwitchRef,
            requestBody: requestBody,
          ),
          from: studentSwitchProvider,
          name: r'studentSwitchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$studentSwitchHash,
          dependencies: StudentSwitchFamily._dependencies,
          allTransitiveDependencies:
              StudentSwitchFamily._allTransitiveDependencies,
          requestBody: requestBody,
        );

  StudentSwitchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestBody,
  }) : super.internal();

  final StudentSwitchRequest requestBody;

  @override
  Override overrideWith(
    FutureOr<AuthResponse?> Function(StudentSwitchRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StudentSwitchProvider._internal(
        (ref) => create(ref as StudentSwitchRef),
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
    return _StudentSwitchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StudentSwitchProvider && other.requestBody == requestBody;
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
mixin StudentSwitchRef on AutoDisposeFutureProviderRef<AuthResponse?> {
  /// The parameter `requestBody` of this provider.
  StudentSwitchRequest get requestBody;
}

class _StudentSwitchProviderElement
    extends AutoDisposeFutureProviderElement<AuthResponse?>
    with StudentSwitchRef {
  _StudentSwitchProviderElement(super.provider);

  @override
  StudentSwitchRequest get requestBody =>
      (origin as StudentSwitchProvider).requestBody;
}

String _$changePasswordHash() => r'ede688ffabce8bc278a718e4d4d53eac00edba42';

/// See also [changePassword].
@ProviderFor(changePassword)
const changePasswordProvider = ChangePasswordFamily();

/// See also [changePassword].
class ChangePasswordFamily extends Family<AsyncValue<bool?>> {
  /// See also [changePassword].
  const ChangePasswordFamily();

  /// See also [changePassword].
  ChangePasswordProvider call({
    required ChangePasswordRequest requestBody,
  }) {
    return ChangePasswordProvider(
      requestBody: requestBody,
    );
  }

  @override
  ChangePasswordProvider getProviderOverride(
    covariant ChangePasswordProvider provider,
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
  String? get name => r'changePasswordProvider';
}

/// See also [changePassword].
class ChangePasswordProvider extends AutoDisposeFutureProvider<bool?> {
  /// See also [changePassword].
  ChangePasswordProvider({
    required ChangePasswordRequest requestBody,
  }) : this._internal(
          (ref) => changePassword(
            ref as ChangePasswordRef,
            requestBody: requestBody,
          ),
          from: changePasswordProvider,
          name: r'changePasswordProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$changePasswordHash,
          dependencies: ChangePasswordFamily._dependencies,
          allTransitiveDependencies:
              ChangePasswordFamily._allTransitiveDependencies,
          requestBody: requestBody,
        );

  ChangePasswordProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestBody,
  }) : super.internal();

  final ChangePasswordRequest requestBody;

  @override
  Override overrideWith(
    FutureOr<bool?> Function(ChangePasswordRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChangePasswordProvider._internal(
        (ref) => create(ref as ChangePasswordRef),
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
    return _ChangePasswordProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChangePasswordProvider && other.requestBody == requestBody;
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
mixin ChangePasswordRef on AutoDisposeFutureProviderRef<bool?> {
  /// The parameter `requestBody` of this provider.
  ChangePasswordRequest get requestBody;
}

class _ChangePasswordProviderElement
    extends AutoDisposeFutureProviderElement<bool?> with ChangePasswordRef {
  _ChangePasswordProviderElement(super.provider);

  @override
  ChangePasswordRequest get requestBody =>
      (origin as ChangePasswordProvider).requestBody;
}

String _$userDetailsNotifierHash() =>
    r'1de554d6567b051009c49103723ca7ef2e67208a';

/// See also [UserDetailsNotifier].
@ProviderFor(UserDetailsNotifier)
final userDetailsNotifierProvider = AutoDisposeAsyncNotifierProvider<
    UserDetailsNotifier, UserDetails?>.internal(
  UserDetailsNotifier.new,
  name: r'userDetailsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userDetailsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserDetailsNotifier = AutoDisposeAsyncNotifier<UserDetails?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
