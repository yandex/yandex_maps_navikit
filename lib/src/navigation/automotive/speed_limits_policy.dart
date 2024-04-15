import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/mapkit/localized_value.dart'
    as mapkit_localized_value;

part 'speed_limits_policy.containers.dart';

/// @nodoc
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
    toNative: 'SpeedLimits.toPointer',
    toPlatform: '(val) => SpeedLimits.fromPointer(val, needFree: false)')
class SpeedLimits {
  final mapkit_localized_value.LocalizedValue urban;
  final mapkit_localized_value.LocalizedValue rural;
  final mapkit_localized_value.LocalizedValue expressway;

  const SpeedLimits(this.urban, this.rural, this.expressway);

  /// @nodoc
  @internal
  SpeedLimits.fromNative(SpeedLimitsNative native)
      : this(
            mapkit_localized_value.LocalizedValue.fromNative(native.urban),
            mapkit_localized_value.LocalizedValue.fromNative(native.rural),
            mapkit_localized_value.LocalizedValue.fromNative(
                native.expressway));

  /// @nodoc
  @internal
  static SpeedLimitsNative toNative(SpeedLimits c) {
    return _SpeedLimitsNativeInit(
        mapkit_localized_value.LocalizedValue.toNative(c.urban),
        mapkit_localized_value.LocalizedValue.toNative(c.rural),
        mapkit_localized_value.LocalizedValue.toNative(c.expressway));
  }

  /// @nodoc
  @internal
  static SpeedLimits? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = SpeedLimits.fromNative(ptr.cast<SpeedLimitsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SpeedLimits? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SpeedLimitsNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
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
    toNative: 'SpeedLimitsRules.toPointer',
    toPlatform: '(val) => SpeedLimitsRules.fromPointer(val, needFree: false)')
class SpeedLimitsRules {
  final SpeedLimitsRulesType urban;
  final SpeedLimitsRulesType rural;
  final SpeedLimitsRulesType expressway;

  const SpeedLimitsRules(this.urban, this.rural, this.expressway);

  /// @nodoc
  @internal
  SpeedLimitsRules.fromNative(SpeedLimitsRulesNative native)
      : this(
            SpeedLimitsRulesType.fromInt(native.urban),
            SpeedLimitsRulesType.fromInt(native.rural),
            SpeedLimitsRulesType.fromInt(native.expressway));

  /// @nodoc
  @internal
  static SpeedLimitsRulesNative toNative(SpeedLimitsRules c) {
    return _SpeedLimitsRulesNativeInit(
        SpeedLimitsRulesType.toInt(c.urban),
        SpeedLimitsRulesType.toInt(c.rural),
        SpeedLimitsRulesType.toInt(c.expressway));
  }

  /// @nodoc
  @internal
  static SpeedLimitsRules? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        SpeedLimitsRules.fromNative(ptr.cast<SpeedLimitsRulesNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SpeedLimitsRules? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SpeedLimitsRulesNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SpeedLimitsRulesType.toPointer',
    toPlatform:
        '(val) => SpeedLimitsRulesType.fromPointer(val, needFree: false)')
enum SpeedLimitsRulesType {
  Absolute,
  Relative,
  ;

  /// @nodoc
  @internal
  static SpeedLimitsRulesType fromInt(core.int val) {
    return SpeedLimitsRulesType.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(SpeedLimitsRulesType e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static SpeedLimitsRulesType? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SpeedLimitsRulesType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SpeedLimitsPolicy.getNativePtr',
    toPlatform:
        '(val) => SpeedLimitsPolicy.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class SpeedLimitsPolicy implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_SpeedLimitsPolicy_free.cast());

  /// @nodoc
  SpeedLimitsPolicy.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SpeedLimitsPolicy.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(SpeedLimitsPolicy? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static SpeedLimitsPolicy? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SpeedLimitsPolicy.fromNativePtr(ptr);
  }

  /// For example for Russia 60/90/110 km/h
  SpeedLimits get legalSpeedLimits {
    return SpeedLimits.fromNative(_SpeedLimitsPolicy_get_legalSpeedLimits(ptr));
  }

  SpeedLimitsRules get speedLimitsRules {
    return SpeedLimitsRules.fromNative(
        _SpeedLimitsPolicy_get_speedLimitsRules(ptr));
  }

  /// For example ratio = 0.8 and current speed limit is 60 km/h - for
  /// Russia: enforcement tolerance is 20 km/h for all speed limits => we
  /// should start warning the user when current speed > 60 + 20 * 0.8 = 76
  /// km/h - for Turkey: enforcement tolerance is 10 percent over the speed
  /// limit => we should start warning the user when current speed > 60 +
  /// 60 * 0.1 * 0.8 = 64.8 km/h
  SpeedLimits customSpeedLimits(core.double toleranceRatio) {
    return SpeedLimits.fromNative(
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
