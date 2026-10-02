// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(addBook)
final addBookProvider = AddBookFamily._();

final class AddBookProvider
    extends $FunctionalProvider<AsyncValue<bool?>, bool?, FutureOr<bool?>>
    with $FutureModifier<bool?>, $FutureProvider<bool?> {
  AddBookProvider._({
    required AddBookFamily super.from,
    required FormData super.argument,
  }) : super(
         retry: null,
         name: r'addBookProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$addBookHash();

  @override
  String toString() {
    return r'addBookProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<bool?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool?> create(Ref ref) {
    final argument = this.argument as FormData;
    return addBook(ref, formData: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is AddBookProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$addBookHash() => r'81c942bb5a839a5ad737db0ca9ff80e5c348404d';

final class AddBookFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<bool?>, FormData> {
  AddBookFamily._()
    : super(
        retry: null,
        name: r'addBookProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AddBookProvider call({required FormData formData}) =>
      AddBookProvider._(argument: formData, from: this);

  @override
  String toString() => r'addBookProvider';
}

@ProviderFor(libraryClasses)
final libraryClassesProvider = LibraryClassesProvider._();

final class LibraryClassesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<String>?>,
          List<String>?,
          FutureOr<List<String>?>
        >
    with $FutureModifier<List<String>?>, $FutureProvider<List<String>?> {
  LibraryClassesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'libraryClassesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$libraryClassesHash();

  @$internal
  @override
  $FutureProviderElement<List<String>?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<String>?> create(Ref ref) {
    return libraryClasses(ref);
  }
}

String _$libraryClassesHash() => r'e40967f4e86fd21596f53a9429b525c3e1b75437';

@ProviderFor(librarySubjects)
final librarySubjectsProvider = LibrarySubjectsFamily._();

final class LibrarySubjectsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<String>?>,
          List<String>?,
          FutureOr<List<String>?>
        >
    with $FutureModifier<List<String>?>, $FutureProvider<List<String>?> {
  LibrarySubjectsProvider._({
    required LibrarySubjectsFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'librarySubjectsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$librarySubjectsHash();

  @override
  String toString() {
    return r'librarySubjectsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<String>?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<String>?> create(Ref ref) {
    final argument = this.argument as String?;
    return librarySubjects(ref, className: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is LibrarySubjectsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$librarySubjectsHash() => r'703415fd66aadd4398202f9e8b59a0f2dcd4ce20';

final class LibrarySubjectsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<String>?>, String?> {
  LibrarySubjectsFamily._()
    : super(
        retry: null,
        name: r'librarySubjectsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LibrarySubjectsProvider call({String? className}) =>
      LibrarySubjectsProvider._(argument: className, from: this);

  @override
  String toString() => r'librarySubjectsProvider';
}

@ProviderFor(addBookChapter)
final addBookChapterProvider = AddBookChapterFamily._();

final class AddBookChapterProvider
    extends $FunctionalProvider<AsyncValue<bool?>, bool?, FutureOr<bool?>>
    with $FutureModifier<bool?>, $FutureProvider<bool?> {
  AddBookChapterProvider._({
    required AddBookChapterFamily super.from,
    required FormData super.argument,
  }) : super(
         retry: null,
         name: r'addBookChapterProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$addBookChapterHash();

  @override
  String toString() {
    return r'addBookChapterProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<bool?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool?> create(Ref ref) {
    final argument = this.argument as FormData;
    return addBookChapter(ref, formData: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is AddBookChapterProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$addBookChapterHash() => r'970f1c5b3e457cca039c02b66c75225eebcdde53';

final class AddBookChapterFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<bool?>, FormData> {
  AddBookChapterFamily._()
    : super(
        retry: null,
        name: r'addBookChapterProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AddBookChapterProvider call({required FormData formData}) =>
      AddBookChapterProvider._(argument: formData, from: this);

  @override
  String toString() => r'addBookChapterProvider';
}
