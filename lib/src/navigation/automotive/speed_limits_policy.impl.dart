part of 'speed_limits_policy.dart';

final class SpeedLimitsNative extends ffi.Struct {
  external mapkit_localized_value.LocalizedValueNative urban;
  external mapkit_localized_value.LocalizedValueNative rural;
  external mapkit_localized_value.LocalizedValueNative expressway;
}

final SpeedLimitsNative Function(
        mapkit_localized_value.LocalizedValueNative,
        mapkit_localized_value.LocalizedValueNative,
        mapkit_localized_value.LocalizedValueNative) _SpeedLimitsNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    SpeedLimitsNative Function(
                        mapkit_localized_value.LocalizedValueNative,
                        mapkit_localized_value.LocalizedValueNative,
                        mapkit_localized_value.LocalizedValueNative)>>(
            'yandex_flutter_navigation_automotive_SpeedLimits_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SpeedLimitsImpl.toPointer',
    toPlatform: '(val) => SpeedLimitsImpl.fromPointer(val, needFree: false)',
    platformType: 'SpeedLimits')
extension SpeedLimitsImpl on SpeedLimits {
  static SpeedLimits fromNative(SpeedLimitsNative native) {
    return SpeedLimits(
        mapkit_localized_value.LocalizedValueImpl.fromNative(native.urban),
        mapkit_localized_value.LocalizedValueImpl.fromNative(native.rural),
        mapkit_localized_value.LocalizedValueImpl.fromNative(
            native.expressway));
  }

  static SpeedLimitsNative toNative(SpeedLimits obj) {
    return _SpeedLimitsNativeInit(
        mapkit_localized_value.LocalizedValueImpl.toNative(obj.urban),
        mapkit_localized_value.LocalizedValueImpl.toNative(obj.rural),
        mapkit_localized_value.LocalizedValueImpl.toNative(obj.expressway));
  }

  static SpeedLimits? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        SpeedLimitsImpl.fromNative(ptr.cast<SpeedLimitsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SpeedLimits? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SpeedLimitsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class SpeedLimitsRulesNative extends ffi.Struct {
  @ffi.Int64()
  external core.int urban;
  @ffi.Int64()
  external core.int rural;
  @ffi.Int64()
  external core.int expressway;
}

final SpeedLimitsRulesNative Function(core.int, core.int, core.int)
    _SpeedLimitsRulesNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    SpeedLimitsRulesNative Function(
                        ffi.Int64, ffi.Int64, ffi.Int64)>>(
            'yandex_flutter_navigation_automotive_SpeedLimitsRules_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SpeedLimitsRulesImpl.toPointer',
    toPlatform:
        '(val) => SpeedLimitsRulesImpl.fromPointer(val, needFree: false)',
    platformType: 'SpeedLimitsRules')
extension SpeedLimitsRulesImpl on SpeedLimitsRules {
  static SpeedLimitsRules fromNative(SpeedLimitsRulesNative native) {
    return SpeedLimitsRules(
        SpeedLimitsRulesTypeImpl.fromInt(native.urban),
        SpeedLimitsRulesTypeImpl.fromInt(native.rural),
        SpeedLimitsRulesTypeImpl.fromInt(native.expressway));
  }

  static SpeedLimitsRulesNative toNative(SpeedLimitsRules obj) {
    return _SpeedLimitsRulesNativeInit(
        SpeedLimitsRulesTypeImpl.toInt(obj.urban),
        SpeedLimitsRulesTypeImpl.toInt(obj.rural),
        SpeedLimitsRulesTypeImpl.toInt(obj.expressway));
  }

  static SpeedLimitsRules? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        SpeedLimitsRulesImpl.fromNative(ptr.cast<SpeedLimitsRulesNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SpeedLimitsRules? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SpeedLimitsRulesNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SpeedLimitsRulesTypeImpl.toPointer',
    toPlatform:
        '(val) => SpeedLimitsRulesTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'SpeedLimitsRulesType')
extension SpeedLimitsRulesTypeImpl on SpeedLimitsRulesType {
  static core.int toInt(SpeedLimitsRulesType e) {
    return e.index;
  }

  static SpeedLimitsRulesType fromInt(core.int val) {
    return SpeedLimitsRulesType.values[val];
  }

  static SpeedLimitsRulesType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SpeedLimitsRulesType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SpeedLimitsPolicyImpl.getNativePtr',
    toPlatform:
        '(val) => SpeedLimitsPolicyImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'SpeedLimitsPolicy')
class SpeedLimitsPolicyImpl implements SpeedLimitsPolicy, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_SpeedLimitsPolicy_free.cast());

  /// @nodoc
  SpeedLimitsPolicyImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SpeedLimitsPolicyImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(SpeedLimitsPolicy? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as SpeedLimitsPolicyImpl).ptr;
  }

  @internal

  /// @nodoc
  static SpeedLimitsPolicy? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SpeedLimitsPolicyImpl.fromNativePtr(ptr);
  }

  @core.override
  SpeedLimits get legalSpeedLimits {
    return SpeedLimitsImpl.fromNative(
        _SpeedLimitsPolicy_get_legalSpeedLimits(ptr));
  }

  @core.override
  SpeedLimitsRules get speedLimitsRules {
    return SpeedLimitsRulesImpl.fromNative(
        _SpeedLimitsPolicy_get_speedLimitsRules(ptr));
  }

  SpeedLimits customSpeedLimits(core.double toleranceRatio) {
    return SpeedLimitsImpl.fromNative(
        _SpeedLimitsPolicy_customSpeedLimits(ptr, toleranceRatio));
  }
}

final _SpeedLimitsPolicy_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_SpeedLimitsPolicy_free');

final SpeedLimitsNative Function(
    ffi
        .Pointer<ffi.Void>) _SpeedLimitsPolicy_get_legalSpeedLimits = lib
    .library
    .lookup<
            ffi
            .NativeFunction<SpeedLimitsNative Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_SpeedLimitsPolicy_get_legalSpeedLimits')
    .asFunction();

final SpeedLimitsRulesNative Function(
    ffi
        .Pointer<ffi.Void>) _SpeedLimitsPolicy_get_speedLimitsRules = lib
    .library
    .lookup<
            ffi.NativeFunction<
                SpeedLimitsRulesNative Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_SpeedLimitsPolicy_get_speedLimitsRules')
    .asFunction();

final SpeedLimitsNative Function(
    ffi.Pointer<ffi.Void>,
    core
        .double) _SpeedLimitsPolicy_customSpeedLimits = lib.library
    .lookup<
            ffi.NativeFunction<
                SpeedLimitsNative Function(ffi.Pointer<ffi.Void>, ffi.Double)>>(
        'yandex_flutter_navigation_automotive_SpeedLimitsPolicy_customSpeedLimits')
    .asFunction();
