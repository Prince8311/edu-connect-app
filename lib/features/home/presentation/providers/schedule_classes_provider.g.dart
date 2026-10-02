// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_classes_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getTimeSlots)
final getTimeSlotsProvider = GetTimeSlotsProvider._();

final class GetTimeSlotsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<TimeSlotModel>?>,
          List<TimeSlotModel>?,
          FutureOr<List<TimeSlotModel>?>
        >
    with
        $FutureModifier<List<TimeSlotModel>?>,
        $FutureProvider<List<TimeSlotModel>?> {
  GetTimeSlotsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getTimeSlotsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getTimeSlotsHash();

  @$internal
  @override
  $FutureProviderElement<List<TimeSlotModel>?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<TimeSlotModel>?> create(Ref ref) {
    return getTimeSlots(ref);
  }
}

String _$getTimeSlotsHash() => r'23513fb0340bf46c6a424d8b2339196e73594f40';

@ProviderFor(getScheduleClasses)
final getScheduleClassesProvider = GetScheduleClassesFamily._();

final class GetScheduleClassesProvider
    extends
        $FunctionalProvider<
          AsyncValue<TimeTableResponse?>,
          TimeTableResponse?,
          FutureOr<TimeTableResponse?>
        >
    with
        $FutureModifier<TimeTableResponse?>,
        $FutureProvider<TimeTableResponse?> {
  GetScheduleClassesProvider._({
    required GetScheduleClassesFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'getScheduleClassesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getScheduleClassesHash();

  @override
  String toString() {
    return r'getScheduleClassesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<TimeTableResponse?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<TimeTableResponse?> create(Ref ref) {
    final argument = this.argument as String?;
    return getScheduleClasses(ref, intent: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GetScheduleClassesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getScheduleClassesHash() =>
    r'1327c87f517b51fd0b9f4e8bb61e0a6a4ff15c6e';

final class GetScheduleClassesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<TimeTableResponse?>, String?> {
  GetScheduleClassesFamily._()
    : super(
        retry: null,
        name: r'getScheduleClassesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetScheduleClassesProvider call({String? intent}) =>
      GetScheduleClassesProvider._(argument: intent, from: this);

  @override
  String toString() => r'getScheduleClassesProvider';
}

@ProviderFor(ongoingClass)
final ongoingClassProvider = OngoingClassProvider._();

final class OngoingClassProvider
    extends
        $FunctionalProvider<
          AsyncValue<OngoingClassModel?>,
          OngoingClassModel?,
          FutureOr<OngoingClassModel?>
        >
    with
        $FutureModifier<OngoingClassModel?>,
        $FutureProvider<OngoingClassModel?> {
  OngoingClassProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ongoingClassProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ongoingClassHash();

  @$internal
  @override
  $FutureProviderElement<OngoingClassModel?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<OngoingClassModel?> create(Ref ref) {
    return ongoingClass(ref);
  }
}

String _$ongoingClassHash() => r'4cfc452e634f72001992fbac87a0625afb87577d';
