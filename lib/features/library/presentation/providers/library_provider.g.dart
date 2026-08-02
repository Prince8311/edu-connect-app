// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addBookHash() => r'81c942bb5a839a5ad737db0ca9ff80e5c348404d';

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

/// See also [addBook].
@ProviderFor(addBook)
const addBookProvider = AddBookFamily();

/// See also [addBook].
class AddBookFamily extends Family<AsyncValue<bool?>> {
  /// See also [addBook].
  const AddBookFamily();

  /// See also [addBook].
  AddBookProvider call({
    required FormData formData,
  }) {
    return AddBookProvider(
      formData: formData,
    );
  }

  @override
  AddBookProvider getProviderOverride(
    covariant AddBookProvider provider,
  ) {
    return call(
      formData: provider.formData,
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
  String? get name => r'addBookProvider';
}

/// See also [addBook].
class AddBookProvider extends AutoDisposeFutureProvider<bool?> {
  /// See also [addBook].
  AddBookProvider({
    required FormData formData,
  }) : this._internal(
          (ref) => addBook(
            ref as AddBookRef,
            formData: formData,
          ),
          from: addBookProvider,
          name: r'addBookProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addBookHash,
          dependencies: AddBookFamily._dependencies,
          allTransitiveDependencies: AddBookFamily._allTransitiveDependencies,
          formData: formData,
        );

  AddBookProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.formData,
  }) : super.internal();

  final FormData formData;

  @override
  Override overrideWith(
    FutureOr<bool?> Function(AddBookRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddBookProvider._internal(
        (ref) => create(ref as AddBookRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        formData: formData,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool?> createElement() {
    return _AddBookProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddBookProvider && other.formData == formData;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, formData.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddBookRef on AutoDisposeFutureProviderRef<bool?> {
  /// The parameter `formData` of this provider.
  FormData get formData;
}

class _AddBookProviderElement extends AutoDisposeFutureProviderElement<bool?>
    with AddBookRef {
  _AddBookProviderElement(super.provider);

  @override
  FormData get formData => (origin as AddBookProvider).formData;
}

String _$libraryClassesHash() => r'e40967f4e86fd21596f53a9429b525c3e1b75437';

/// See also [libraryClasses].
@ProviderFor(libraryClasses)
final libraryClassesProvider =
    AutoDisposeFutureProvider<List<String>?>.internal(
  libraryClasses,
  name: r'libraryClassesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$libraryClassesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LibraryClassesRef = AutoDisposeFutureProviderRef<List<String>?>;
String _$librarySubjectsHash() => r'703415fd66aadd4398202f9e8b59a0f2dcd4ce20';

/// See also [librarySubjects].
@ProviderFor(librarySubjects)
const librarySubjectsProvider = LibrarySubjectsFamily();

/// See also [librarySubjects].
class LibrarySubjectsFamily extends Family<AsyncValue<List<String>?>> {
  /// See also [librarySubjects].
  const LibrarySubjectsFamily();

  /// See also [librarySubjects].
  LibrarySubjectsProvider call({
    String? className,
  }) {
    return LibrarySubjectsProvider(
      className: className,
    );
  }

  @override
  LibrarySubjectsProvider getProviderOverride(
    covariant LibrarySubjectsProvider provider,
  ) {
    return call(
      className: provider.className,
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
  String? get name => r'librarySubjectsProvider';
}

/// See also [librarySubjects].
class LibrarySubjectsProvider extends AutoDisposeFutureProvider<List<String>?> {
  /// See also [librarySubjects].
  LibrarySubjectsProvider({
    String? className,
  }) : this._internal(
          (ref) => librarySubjects(
            ref as LibrarySubjectsRef,
            className: className,
          ),
          from: librarySubjectsProvider,
          name: r'librarySubjectsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$librarySubjectsHash,
          dependencies: LibrarySubjectsFamily._dependencies,
          allTransitiveDependencies:
              LibrarySubjectsFamily._allTransitiveDependencies,
          className: className,
        );

  LibrarySubjectsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.className,
  }) : super.internal();

  final String? className;

  @override
  Override overrideWith(
    FutureOr<List<String>?> Function(LibrarySubjectsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LibrarySubjectsProvider._internal(
        (ref) => create(ref as LibrarySubjectsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        className: className,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>?> createElement() {
    return _LibrarySubjectsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LibrarySubjectsProvider && other.className == className;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, className.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LibrarySubjectsRef on AutoDisposeFutureProviderRef<List<String>?> {
  /// The parameter `className` of this provider.
  String? get className;
}

class _LibrarySubjectsProviderElement
    extends AutoDisposeFutureProviderElement<List<String>?>
    with LibrarySubjectsRef {
  _LibrarySubjectsProviderElement(super.provider);

  @override
  String? get className => (origin as LibrarySubjectsProvider).className;
}

String _$addBookChapterHash() => r'970f1c5b3e457cca039c02b66c75225eebcdde53';

/// See also [addBookChapter].
@ProviderFor(addBookChapter)
const addBookChapterProvider = AddBookChapterFamily();

/// See also [addBookChapter].
class AddBookChapterFamily extends Family<AsyncValue<bool?>> {
  /// See also [addBookChapter].
  const AddBookChapterFamily();

  /// See also [addBookChapter].
  AddBookChapterProvider call({
    required FormData formData,
  }) {
    return AddBookChapterProvider(
      formData: formData,
    );
  }

  @override
  AddBookChapterProvider getProviderOverride(
    covariant AddBookChapterProvider provider,
  ) {
    return call(
      formData: provider.formData,
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
  String? get name => r'addBookChapterProvider';
}

/// See also [addBookChapter].
class AddBookChapterProvider extends AutoDisposeFutureProvider<bool?> {
  /// See also [addBookChapter].
  AddBookChapterProvider({
    required FormData formData,
  }) : this._internal(
          (ref) => addBookChapter(
            ref as AddBookChapterRef,
            formData: formData,
          ),
          from: addBookChapterProvider,
          name: r'addBookChapterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addBookChapterHash,
          dependencies: AddBookChapterFamily._dependencies,
          allTransitiveDependencies:
              AddBookChapterFamily._allTransitiveDependencies,
          formData: formData,
        );

  AddBookChapterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.formData,
  }) : super.internal();

  final FormData formData;

  @override
  Override overrideWith(
    FutureOr<bool?> Function(AddBookChapterRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddBookChapterProvider._internal(
        (ref) => create(ref as AddBookChapterRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        formData: formData,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool?> createElement() {
    return _AddBookChapterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddBookChapterProvider && other.formData == formData;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, formData.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddBookChapterRef on AutoDisposeFutureProviderRef<bool?> {
  /// The parameter `formData` of this provider.
  FormData get formData;
}

class _AddBookChapterProviderElement
    extends AutoDisposeFutureProviderElement<bool?> with AddBookChapterRef {
  _AddBookChapterProviderElement(super.provider);

  @override
  FormData get formData => (origin as AddBookChapterProvider).formData;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
