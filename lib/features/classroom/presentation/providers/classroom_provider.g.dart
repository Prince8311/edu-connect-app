// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getClassroomDetailsHash() =>
    r'6fff0e84213f5d65841577d7d9118018a2d96734';

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

/// See also [getClassroomDetails].
@ProviderFor(getClassroomDetails)
const getClassroomDetailsProvider = GetClassroomDetailsFamily();

/// See also [getClassroomDetails].
class GetClassroomDetailsFamily extends Family<AsyncValue<ClassroomModel?>> {
  /// See also [getClassroomDetails].
  const GetClassroomDetailsFamily();

  /// See also [getClassroomDetails].
  GetClassroomDetailsProvider call({
    required int id,
  }) {
    return GetClassroomDetailsProvider(
      id: id,
    );
  }

  @override
  GetClassroomDetailsProvider getProviderOverride(
    covariant GetClassroomDetailsProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'getClassroomDetailsProvider';
}

/// See also [getClassroomDetails].
class GetClassroomDetailsProvider
    extends AutoDisposeFutureProvider<ClassroomModel?> {
  /// See also [getClassroomDetails].
  GetClassroomDetailsProvider({
    required int id,
  }) : this._internal(
          (ref) => getClassroomDetails(
            ref as GetClassroomDetailsRef,
            id: id,
          ),
          from: getClassroomDetailsProvider,
          name: r'getClassroomDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getClassroomDetailsHash,
          dependencies: GetClassroomDetailsFamily._dependencies,
          allTransitiveDependencies:
              GetClassroomDetailsFamily._allTransitiveDependencies,
          id: id,
        );

  GetClassroomDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<ClassroomModel?> Function(GetClassroomDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetClassroomDetailsProvider._internal(
        (ref) => create(ref as GetClassroomDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ClassroomModel?> createElement() {
    return _GetClassroomDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetClassroomDetailsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetClassroomDetailsRef on AutoDisposeFutureProviderRef<ClassroomModel?> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetClassroomDetailsProviderElement
    extends AutoDisposeFutureProviderElement<ClassroomModel?>
    with GetClassroomDetailsRef {
  _GetClassroomDetailsProviderElement(super.provider);

  @override
  int get id => (origin as GetClassroomDetailsProvider).id;
}

String _$getClassroomStudentsHash() =>
    r'7a207e9597b6d5c40b006da528a7e6b10b7a18cd';

/// See also [getClassroomStudents].
@ProviderFor(getClassroomStudents)
const getClassroomStudentsProvider = GetClassroomStudentsFamily();

/// See also [getClassroomStudents].
class GetClassroomStudentsFamily
    extends Family<AsyncValue<List<ClassroomStudentModel>>> {
  /// See also [getClassroomStudents].
  const GetClassroomStudentsFamily();

  /// See also [getClassroomStudents].
  GetClassroomStudentsProvider call({
    required int id,
  }) {
    return GetClassroomStudentsProvider(
      id: id,
    );
  }

  @override
  GetClassroomStudentsProvider getProviderOverride(
    covariant GetClassroomStudentsProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'getClassroomStudentsProvider';
}

/// See also [getClassroomStudents].
class GetClassroomStudentsProvider
    extends AutoDisposeFutureProvider<List<ClassroomStudentModel>> {
  /// See also [getClassroomStudents].
  GetClassroomStudentsProvider({
    required int id,
  }) : this._internal(
          (ref) => getClassroomStudents(
            ref as GetClassroomStudentsRef,
            id: id,
          ),
          from: getClassroomStudentsProvider,
          name: r'getClassroomStudentsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getClassroomStudentsHash,
          dependencies: GetClassroomStudentsFamily._dependencies,
          allTransitiveDependencies:
              GetClassroomStudentsFamily._allTransitiveDependencies,
          id: id,
        );

  GetClassroomStudentsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<List<ClassroomStudentModel>> Function(
            GetClassroomStudentsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetClassroomStudentsProvider._internal(
        (ref) => create(ref as GetClassroomStudentsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ClassroomStudentModel>>
      createElement() {
    return _GetClassroomStudentsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetClassroomStudentsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetClassroomStudentsRef
    on AutoDisposeFutureProviderRef<List<ClassroomStudentModel>> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetClassroomStudentsProviderElement
    extends AutoDisposeFutureProviderElement<List<ClassroomStudentModel>>
    with GetClassroomStudentsRef {
  _GetClassroomStudentsProviderElement(super.provider);

  @override
  int get id => (origin as GetClassroomStudentsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
