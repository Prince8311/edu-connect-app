// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_classes_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getTimeSlotsHash() => r'23513fb0340bf46c6a424d8b2339196e73594f40';

/// See also [getTimeSlots].
@ProviderFor(getTimeSlots)
final getTimeSlotsProvider =
    AutoDisposeFutureProvider<List<TimeSlotModel>?>.internal(
  getTimeSlots,
  name: r'getTimeSlotsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getTimeSlotsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetTimeSlotsRef = AutoDisposeFutureProviderRef<List<TimeSlotModel>?>;
String _$getScheduleClassesHash() =>
    r'1327c87f517b51fd0b9f4e8bb61e0a6a4ff15c6e';

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

/// See also [getScheduleClasses].
@ProviderFor(getScheduleClasses)
const getScheduleClassesProvider = GetScheduleClassesFamily();

/// See also [getScheduleClasses].
class GetScheduleClassesFamily extends Family<AsyncValue<TimeTableResponse?>> {
  /// See also [getScheduleClasses].
  const GetScheduleClassesFamily();

  /// See also [getScheduleClasses].
  GetScheduleClassesProvider call({
    String? intent,
  }) {
    return GetScheduleClassesProvider(
      intent: intent,
    );
  }

  @override
  GetScheduleClassesProvider getProviderOverride(
    covariant GetScheduleClassesProvider provider,
  ) {
    return call(
      intent: provider.intent,
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
  String? get name => r'getScheduleClassesProvider';
}

/// See also [getScheduleClasses].
class GetScheduleClassesProvider
    extends AutoDisposeFutureProvider<TimeTableResponse?> {
  /// See also [getScheduleClasses].
  GetScheduleClassesProvider({
    String? intent,
  }) : this._internal(
          (ref) => getScheduleClasses(
            ref as GetScheduleClassesRef,
            intent: intent,
          ),
          from: getScheduleClassesProvider,
          name: r'getScheduleClassesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getScheduleClassesHash,
          dependencies: GetScheduleClassesFamily._dependencies,
          allTransitiveDependencies:
              GetScheduleClassesFamily._allTransitiveDependencies,
          intent: intent,
        );

  GetScheduleClassesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.intent,
  }) : super.internal();

  final String? intent;

  @override
  Override overrideWith(
    FutureOr<TimeTableResponse?> Function(GetScheduleClassesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetScheduleClassesProvider._internal(
        (ref) => create(ref as GetScheduleClassesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        intent: intent,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<TimeTableResponse?> createElement() {
    return _GetScheduleClassesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetScheduleClassesProvider && other.intent == intent;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, intent.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetScheduleClassesRef
    on AutoDisposeFutureProviderRef<TimeTableResponse?> {
  /// The parameter `intent` of this provider.
  String? get intent;
}

class _GetScheduleClassesProviderElement
    extends AutoDisposeFutureProviderElement<TimeTableResponse?>
    with GetScheduleClassesRef {
  _GetScheduleClassesProviderElement(super.provider);

  @override
  String? get intent => (origin as GetScheduleClassesProvider).intent;
}

String _$ongoingClassHash() => r'4cfc452e634f72001992fbac87a0625afb87577d';

/// See also [ongoingClass].
@ProviderFor(ongoingClass)
final ongoingClassProvider =
    AutoDisposeFutureProvider<OngoingClassModel?>.internal(
  ongoingClass,
  name: r'ongoingClassProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$ongoingClassHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef OngoingClassRef = AutoDisposeFutureProviderRef<OngoingClassModel?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
