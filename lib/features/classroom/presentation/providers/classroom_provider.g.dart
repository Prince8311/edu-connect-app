// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getClassroomDetails)
final getClassroomDetailsProvider = GetClassroomDetailsFamily._();

final class GetClassroomDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<ClassroomModel?>,
          ClassroomModel?,
          FutureOr<ClassroomModel?>
        >
    with $FutureModifier<ClassroomModel?>, $FutureProvider<ClassroomModel?> {
  GetClassroomDetailsProvider._({
    required GetClassroomDetailsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'getClassroomDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getClassroomDetailsHash();

  @override
  String toString() {
    return r'getClassroomDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ClassroomModel?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ClassroomModel?> create(Ref ref) {
    final argument = this.argument as int;
    return getClassroomDetails(ref, id: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GetClassroomDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getClassroomDetailsHash() =>
    r'6fff0e84213f5d65841577d7d9118018a2d96734';

final class GetClassroomDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ClassroomModel?>, int> {
  GetClassroomDetailsFamily._()
    : super(
        retry: null,
        name: r'getClassroomDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetClassroomDetailsProvider call({required int id}) =>
      GetClassroomDetailsProvider._(argument: id, from: this);

  @override
  String toString() => r'getClassroomDetailsProvider';
}

@ProviderFor(getClassroomStudents)
final getClassroomStudentsProvider = GetClassroomStudentsFamily._();

final class GetClassroomStudentsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ClassroomStudentModel>>,
          List<ClassroomStudentModel>,
          FutureOr<List<ClassroomStudentModel>>
        >
    with
        $FutureModifier<List<ClassroomStudentModel>>,
        $FutureProvider<List<ClassroomStudentModel>> {
  GetClassroomStudentsProvider._({
    required GetClassroomStudentsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'getClassroomStudentsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getClassroomStudentsHash();

  @override
  String toString() {
    return r'getClassroomStudentsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<ClassroomStudentModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ClassroomStudentModel>> create(Ref ref) {
    final argument = this.argument as int;
    return getClassroomStudents(ref, id: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GetClassroomStudentsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getClassroomStudentsHash() =>
    r'7a207e9597b6d5c40b006da528a7e6b10b7a18cd';

final class GetClassroomStudentsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<ClassroomStudentModel>>, int> {
  GetClassroomStudentsFamily._()
    : super(
        retry: null,
        name: r'getClassroomStudentsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetClassroomStudentsProvider call({required int id}) =>
      GetClassroomStudentsProvider._(argument: id, from: this);

  @override
  String toString() => r'getClassroomStudentsProvider';
}

@ProviderFor(classroomAttendance)
final classroomAttendanceProvider = ClassroomAttendanceFamily._();

final class ClassroomAttendanceProvider
    extends $FunctionalProvider<AsyncValue<bool?>, bool?, FutureOr<bool?>>
    with $FutureModifier<bool?>, $FutureProvider<bool?> {
  ClassroomAttendanceProvider._({
    required ClassroomAttendanceFamily super.from,
    required ({String intent, AttendanceRequestModel body}) super.argument,
  }) : super(
         retry: null,
         name: r'classroomAttendanceProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$classroomAttendanceHash();

  @override
  String toString() {
    return r'classroomAttendanceProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<bool?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool?> create(Ref ref) {
    final argument =
        this.argument as ({String intent, AttendanceRequestModel body});
    return classroomAttendance(
      ref,
      intent: argument.intent,
      body: argument.body,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ClassroomAttendanceProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$classroomAttendanceHash() =>
    r'af3559da5dbfd7cdabc99e649746638a903b931a';

final class ClassroomAttendanceFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<bool?>,
          ({String intent, AttendanceRequestModel body})
        > {
  ClassroomAttendanceFamily._()
    : super(
        retry: null,
        name: r'classroomAttendanceProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClassroomAttendanceProvider call({
    required String intent,
    required AttendanceRequestModel body,
  }) => ClassroomAttendanceProvider._(
    argument: (intent: intent, body: body),
    from: this,
  );

  @override
  String toString() => r'classroomAttendanceProvider';
}
