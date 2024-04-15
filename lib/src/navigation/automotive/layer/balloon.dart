import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_navikit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/directions/driving/action.dart'
    as directions_driving_action;
import 'package:yandex_maps_navikit/src/directions/driving/direction_signs.dart'
    as directions_driving_direction_signs;
import 'package:yandex_maps_navikit/src/directions/driving/lane.dart'
    as directions_driving_lane;
import 'package:yandex_maps_navikit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_navikit/src/directions/driving/weight.dart'
    as directions_driving_weight;
import 'package:yandex_maps_navikit/src/mapkit/localized_value.dart'
    as mapkit_localized_value;

part 'balloon.containers.dart';

/// @nodoc
final class ManoeuvreNative extends ffi.Struct {
  @ffi.Int64()
  external core.int action;
  external mapkit_localized_value.LocalizedValueNative distance;
  external ffi.Pointer<ffi.Void> nextRoadName;
}

final ManoeuvreNative Function(core.int,
        mapkit_localized_value.LocalizedValueNative, ffi.Pointer<ffi.Void>)
    _ManoeuvreNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    ManoeuvreNative Function(
                        ffi.Int64,
                        mapkit_localized_value.LocalizedValueNative,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_layer_Manoeuvre_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'Manoeuvre.toPointer',
    toPlatform: '(val) => Manoeuvre.fromPointer(val, needFree: false)')
class Manoeuvre {
  final directions_driving_action.DrivingAction action;
  final mapkit_localized_value.LocalizedValue distance;
  final core.String? nextRoadName;

  const Manoeuvre(
    this.action,
    this.distance, {
    this.nextRoadName,
  });

  /// @nodoc
  @internal
  Manoeuvre.fromNative(ManoeuvreNative native)
      : this(directions_driving_action.DrivingAction.fromInt(native.action),
            mapkit_localized_value.LocalizedValue.fromNative(native.distance),
            nextRoadName:
                to_platform.toPlatformFromPointerString(native.nextRoadName));

  /// @nodoc
  @internal
  static ManoeuvreNative toNative(Manoeuvre c) {
    return _ManoeuvreNativeInit(
        directions_driving_action.DrivingAction.toInt(c.action),
        mapkit_localized_value.LocalizedValue.toNative(c.distance),
        to_native.toNativePtrString(c.nextRoadName));
  }

  /// @nodoc
  @internal
  static Manoeuvre? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = Manoeuvre.fromNative(ptr.cast<ManoeuvreNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(Manoeuvre? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ManoeuvreNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'ManoeuvreBalloon.toPointer',
    toPlatform: '(val) => ManoeuvreBalloon.fromPointer(val, needFree: false)')
class ManoeuvreBalloon implements ffi.Finalizable {
  late final manoeuvre =
      Manoeuvre.fromNative(_ManoeuvreBalloon_get_manoeuvre(_ptr));
  late final directionSign =
      directions_driving_direction_signs.DrivingDirectionSign.fromOptionalPtr(
          _ManoeuvreBalloon_get_directionSign(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_ManoeuvreBalloon_free.cast());

  ManoeuvreBalloon(Manoeuvre manoeuvre,
      directions_driving_direction_signs.DrivingDirectionSign? directionSign)
      : this.fromNativePtr(_ManoeuvreBalloon_init(
            Manoeuvre.toNative(manoeuvre),
            directions_driving_direction_signs.DrivingDirectionSign
                .getNativePtr(directionSign)));

  /// @nodoc
  @internal
  ManoeuvreBalloon.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(ManoeuvreBalloon? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static ManoeuvreBalloon? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return ManoeuvreBalloon.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static ManoeuvreBalloon? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        ManoeuvreBalloon.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(ManoeuvreBalloon? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _ManoeuvreBalloon_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _ManoeuvreBalloon_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_layer_ManoeuvreBalloon_clone')
        .asFunction(isLeaf: true);

final _ManoeuvreBalloon_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_navigation_automotive_layer_ManoeuvreBalloon_free');

final ffi.Pointer<ffi.Void> Function(ManoeuvreNative, ffi.Pointer<ffi.Void>)
    _ManoeuvreBalloon_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ManoeuvreNative, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_layer_ManoeuvreBalloon_init')
        .asFunction(isLeaf: true);

final ManoeuvreNative Function(
    ffi
        .Pointer<ffi.Void>) _ManoeuvreBalloon_get_manoeuvre = lib.library
    .lookup<
            ffi
            .NativeFunction<ManoeuvreNative Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_ManoeuvreBalloon_get_manoeuvre')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _ManoeuvreBalloon_get_directionSign = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_ManoeuvreBalloon_get_directionSign')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'ManoeuvreWithLaneSignBalloon.toPointer',
    toPlatform:
        '(val) => ManoeuvreWithLaneSignBalloon.fromPointer(val, needFree: false)')
class ManoeuvreWithLaneSignBalloon implements ffi.Finalizable {
  late final manoeuvre =
      Manoeuvre.fromNative(_ManoeuvreWithLaneSignBalloon_get_manoeuvre(_ptr));
  late final laneSign = directions_driving_lane.DrivingLaneSign.fromNativePtr(
      _ManoeuvreWithLaneSignBalloon_get_laneSign(_ptr));
  late final directionSign =
      directions_driving_direction_signs.DrivingDirectionSign.fromOptionalPtr(
          _ManoeuvreWithLaneSignBalloon_get_directionSign(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_ManoeuvreWithLaneSignBalloon_free.cast());

  ManoeuvreWithLaneSignBalloon(
      Manoeuvre manoeuvre,
      directions_driving_lane.DrivingLaneSign laneSign,
      directions_driving_direction_signs.DrivingDirectionSign? directionSign)
      : this.fromNativePtr(_ManoeuvreWithLaneSignBalloon_init(
            Manoeuvre.toNative(manoeuvre),
            directions_driving_lane.DrivingLaneSign.getNativePtr(laneSign),
            directions_driving_direction_signs.DrivingDirectionSign
                .getNativePtr(directionSign)));

  /// @nodoc
  @internal
  ManoeuvreWithLaneSignBalloon.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(ManoeuvreWithLaneSignBalloon? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static ManoeuvreWithLaneSignBalloon? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return ManoeuvreWithLaneSignBalloon.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static ManoeuvreWithLaneSignBalloon? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = ManoeuvreWithLaneSignBalloon.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(ManoeuvreWithLaneSignBalloon? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _ManoeuvreWithLaneSignBalloon_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _ManoeuvreWithLaneSignBalloon_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_ManoeuvreWithLaneSignBalloon_clone')
    .asFunction(isLeaf: true);

final _ManoeuvreWithLaneSignBalloon_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_navigation_automotive_layer_ManoeuvreWithLaneSignBalloon_free');

final ffi.Pointer<ffi.Void> Function(
    ManoeuvreNative,
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _ManoeuvreWithLaneSignBalloon_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ManoeuvreNative,
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_ManoeuvreWithLaneSignBalloon_init')
    .asFunction(isLeaf: true);

final ManoeuvreNative Function(
    ffi
        .Pointer<ffi.Void>) _ManoeuvreWithLaneSignBalloon_get_manoeuvre = lib
    .library
    .lookup<
            ffi
            .NativeFunction<ManoeuvreNative Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_ManoeuvreWithLaneSignBalloon_get_manoeuvre')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _ManoeuvreWithLaneSignBalloon_get_laneSign = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_ManoeuvreWithLaneSignBalloon_get_laneSign')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.Void>) _ManoeuvreWithLaneSignBalloon_get_directionSign = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_ManoeuvreWithLaneSignBalloon_get_directionSign')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'LaneSignBalloon.toPointer',
    toPlatform: '(val) => LaneSignBalloon.fromPointer(val, needFree: false)')
class LaneSignBalloon implements ffi.Finalizable {
  late final laneSign = directions_driving_lane.DrivingLaneSign.fromNativePtr(
      _LaneSignBalloon_get_laneSign(_ptr));
  late final directionSign =
      directions_driving_direction_signs.DrivingDirectionSign.fromOptionalPtr(
          _LaneSignBalloon_get_directionSign(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_LaneSignBalloon_free.cast());

  LaneSignBalloon(directions_driving_lane.DrivingLaneSign laneSign,
      directions_driving_direction_signs.DrivingDirectionSign? directionSign)
      : this.fromNativePtr(_LaneSignBalloon_init(
            directions_driving_lane.DrivingLaneSign.getNativePtr(laneSign),
            directions_driving_direction_signs.DrivingDirectionSign
                .getNativePtr(directionSign)));

  /// @nodoc
  @internal
  LaneSignBalloon.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(LaneSignBalloon? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static LaneSignBalloon? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return LaneSignBalloon.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static LaneSignBalloon? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        LaneSignBalloon.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(LaneSignBalloon? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _LaneSignBalloon_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _LaneSignBalloon_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_layer_LaneSignBalloon_clone')
        .asFunction(isLeaf: true);

final _LaneSignBalloon_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_navigation_automotive_layer_LaneSignBalloon_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>) _LaneSignBalloon_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_layer_LaneSignBalloon_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _LaneSignBalloon_get_laneSign = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_LaneSignBalloon_get_laneSign')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _LaneSignBalloon_get_directionSign = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_LaneSignBalloon_get_directionSign')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'RouteSummaryBalloon.toPointer',
    toPlatform:
        '(val) => RouteSummaryBalloon.fromPointer(val, needFree: false)')
class RouteSummaryBalloon implements ffi.Finalizable {
  late final summary = directions_driving_route.DrivingSummary.fromNative(
      _RouteSummaryBalloon_get_summary(_ptr));
  late final tags =
      to_platform.toVectorString(_RouteSummaryBalloon_get_tags(_ptr));
  late final relativeWeight =
      directions_driving_weight.DrivingWeight.fromPointer(
          _RouteSummaryBalloon_get_relativeWeight(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_RouteSummaryBalloon_free.cast());

  RouteSummaryBalloon(
      directions_driving_route.DrivingSummary summary,
      core.List<core.String> tags,
      directions_driving_weight.DrivingWeight? relativeWeight)
      : this.fromNativePtr(_RouteSummaryBalloon_init(
            directions_driving_route.DrivingSummary.toNative(summary),
            to_native.toNativeVectorString(tags),
            directions_driving_weight.DrivingWeight.toPointer(relativeWeight)));

  /// @nodoc
  @internal
  RouteSummaryBalloon.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(RouteSummaryBalloon? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static RouteSummaryBalloon? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return RouteSummaryBalloon.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static RouteSummaryBalloon? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = RouteSummaryBalloon.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(RouteSummaryBalloon? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _RouteSummaryBalloon_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RouteSummaryBalloon_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_RouteSummaryBalloon_clone')
    .asFunction(isLeaf: true);

final _RouteSummaryBalloon_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_navigation_automotive_layer_RouteSummaryBalloon_free');

final ffi.Pointer<ffi.Void> Function(
    directions_driving_route.DrivingSummaryNative,
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _RouteSummaryBalloon_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    directions_driving_route.DrivingSummaryNative,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_RouteSummaryBalloon_init')
    .asFunction(isLeaf: true);

final directions_driving_route.DrivingSummaryNative Function(
    ffi
        .Pointer<ffi.Void>) _RouteSummaryBalloon_get_summary = lib.library
    .lookup<
            ffi.NativeFunction<
                directions_driving_route.DrivingSummaryNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_RouteSummaryBalloon_get_summary')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RouteSummaryBalloon_get_tags = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_RouteSummaryBalloon_get_tags')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RouteSummaryBalloon_get_relativeWeight = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_RouteSummaryBalloon_get_relativeWeight')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'AlternativeBalloon.toPointer',
    toPlatform: '(val) => AlternativeBalloon.fromPointer(val, needFree: false)')
class AlternativeBalloon implements ffi.Finalizable {
  late final summary = directions_driving_route.DrivingSummary.fromNative(
      _AlternativeBalloon_get_summary(_ptr));
  late final relativeWeight =
      directions_driving_weight.DrivingWeight.fromNative(
          _AlternativeBalloon_get_relativeWeight(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_AlternativeBalloon_free.cast());

  AlternativeBalloon(directions_driving_route.DrivingSummary summary,
      directions_driving_weight.DrivingWeight relativeWeight)
      : this.fromNativePtr(_AlternativeBalloon_init(
            directions_driving_route.DrivingSummary.toNative(summary),
            directions_driving_weight.DrivingWeight.toNative(relativeWeight)));

  /// @nodoc
  @internal
  AlternativeBalloon.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(AlternativeBalloon? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static AlternativeBalloon? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return AlternativeBalloon.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static AlternativeBalloon? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = AlternativeBalloon.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(AlternativeBalloon? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _AlternativeBalloon_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _AlternativeBalloon_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_AlternativeBalloon_clone')
    .asFunction(isLeaf: true);

final _AlternativeBalloon_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_navigation_automotive_layer_AlternativeBalloon_free');

final ffi.Pointer<ffi.Void> Function(
    directions_driving_route.DrivingSummaryNative,
    directions_driving_weight
        .DrivingWeightNative) _AlternativeBalloon_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    directions_driving_route.DrivingSummaryNative,
                    directions_driving_weight.DrivingWeightNative)>>(
        'yandex_flutter_navigation_automotive_layer_AlternativeBalloon_init')
    .asFunction(isLeaf: true);

final directions_driving_route.DrivingSummaryNative Function(
    ffi
        .Pointer<ffi.Void>) _AlternativeBalloon_get_summary = lib.library
    .lookup<
            ffi.NativeFunction<
                directions_driving_route.DrivingSummaryNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_AlternativeBalloon_get_summary')
    .asFunction(isLeaf: true);
final directions_driving_weight.DrivingWeightNative Function(
    ffi
        .Pointer<ffi.Void>) _AlternativeBalloon_get_relativeWeight = lib.library
    .lookup<
            ffi.NativeFunction<
                directions_driving_weight.DrivingWeightNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_AlternativeBalloon_get_relativeWeight')
    .asFunction(isLeaf: true);

/// @nodoc
@internal
final class BalloonNativeData extends ffi.Union {
  external ffi.Pointer<ffi.Void> manoeuvre;
  external ffi.Pointer<ffi.Void> manoeuvreWithLaneSign;
  external ffi.Pointer<ffi.Void> laneSign;
  external ffi.Pointer<ffi.Void> routeSummary;
  external ffi.Pointer<ffi.Void> alternative;
}

/// @nodoc
@internal
final class BalloonNative extends ffi.Struct {
  @ffi.Int()
  external core.int tag;
  external BalloonNativeData data;
}

@bindings_annotations.ContainerData(
    toNative: 'Balloon.toPointer',
    toPlatform: '(val) => Balloon.fromPointer(val, needFree: false)')
class Balloon {
  const Balloon.fromManoeuvreBalloon(ManoeuvreBalloon manoeuvre)
      : _value = manoeuvre;

  const Balloon.fromManoeuvreWithLaneSignBalloon(
      ManoeuvreWithLaneSignBalloon manoeuvreWithLaneSign)
      : _value = manoeuvreWithLaneSign;

  const Balloon.fromLaneSignBalloon(LaneSignBalloon laneSign)
      : _value = laneSign;

  const Balloon.fromRouteSummaryBalloon(RouteSummaryBalloon routeSummary)
      : _value = routeSummary;

  const Balloon.fromAlternativeBalloon(AlternativeBalloon alternative)
      : _value = alternative;

  /// @nodoc
  @internal
  static Balloon toPlatform(BalloonNative obj) {
    switch (obj.tag) {
      case 0:
        return Balloon.fromManoeuvreBalloon(
            ManoeuvreBalloon.fromNativePtr(obj.data.manoeuvre));
      case 1:
        return Balloon.fromManoeuvreWithLaneSignBalloon(
            ManoeuvreWithLaneSignBalloon.fromNativePtr(
                obj.data.manoeuvreWithLaneSign));
      case 2:
        return Balloon.fromLaneSignBalloon(
            LaneSignBalloon.fromNativePtr(obj.data.laneSign));
      case 3:
        return Balloon.fromRouteSummaryBalloon(
            RouteSummaryBalloon.fromNativePtr(obj.data.routeSummary));
      case 4:
        return Balloon.fromAlternativeBalloon(
            AlternativeBalloon.fromNativePtr(obj.data.alternative));
    }
    throw core.TypeError();
  }

  /// @nodoc
  @internal
  static BalloonNative toNative(Balloon obj) {
    if (obj._value is ManoeuvreBalloon) {
      return _BalloonNative_ManoeuvreBalloon_init(
          ManoeuvreBalloon.getNativePtr(obj._value));
    }
    if (obj._value is ManoeuvreWithLaneSignBalloon) {
      return _BalloonNative_ManoeuvreWithLaneSignBalloon_init(
          ManoeuvreWithLaneSignBalloon.getNativePtr(obj._value));
    }
    if (obj._value is LaneSignBalloon) {
      return _BalloonNative_LaneSignBalloon_init(
          LaneSignBalloon.getNativePtr(obj._value));
    }
    if (obj._value is RouteSummaryBalloon) {
      return _BalloonNative_RouteSummaryBalloon_init(
          RouteSummaryBalloon.getNativePtr(obj._value));
    }
    if (obj._value is AlternativeBalloon) {
      return _BalloonNative_AlternativeBalloon_init(
          AlternativeBalloon.getNativePtr(obj._value));
    }
    throw core.TypeError();
  }

  ManoeuvreBalloon? asManoeuvreBalloon() {
    if (_value is ManoeuvreBalloon) {
      return _value;
    }
    return null;
  }

  ManoeuvreWithLaneSignBalloon? asManoeuvreWithLaneSignBalloon() {
    if (_value is ManoeuvreWithLaneSignBalloon) {
      return _value;
    }
    return null;
  }

  LaneSignBalloon? asLaneSignBalloon() {
    if (_value is LaneSignBalloon) {
      return _value;
    }
    return null;
  }

  RouteSummaryBalloon? asRouteSummaryBalloon() {
    if (_value is RouteSummaryBalloon) {
      return _value;
    }
    return null;
  }

  AlternativeBalloon? asAlternativeBalloon() {
    if (_value is AlternativeBalloon) {
      return _value;
    }
    return null;
  }

  /// Applies the passed function to the variant value.
  void when({
    required void Function(ManoeuvreBalloon value) onManoeuvreBalloon,
    required void Function(ManoeuvreWithLaneSignBalloon value)
        onManoeuvreWithLaneSignBalloon,
    required void Function(LaneSignBalloon value) onLaneSignBalloon,
    required void Function(RouteSummaryBalloon value) onRouteSummaryBalloon,
    required void Function(AlternativeBalloon value) onAlternativeBalloon,
  }) {
    if (_value is ManoeuvreBalloon) {
      return onManoeuvreBalloon(_value as ManoeuvreBalloon);
    }
    if (_value is ManoeuvreWithLaneSignBalloon) {
      return onManoeuvreWithLaneSignBalloon(
          _value as ManoeuvreWithLaneSignBalloon);
    }
    if (_value is LaneSignBalloon) {
      return onLaneSignBalloon(_value as LaneSignBalloon);
    }
    if (_value is RouteSummaryBalloon) {
      return onRouteSummaryBalloon(_value as RouteSummaryBalloon);
    }
    if (_value is AlternativeBalloon) {
      return onAlternativeBalloon(_value as AlternativeBalloon);
    }
    assert(false);
  }

  /// @nodoc
  @internal
  static Balloon? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = toPlatform(ptr.cast<BalloonNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(Balloon? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<BalloonNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }

  final core.dynamic _value;
}

final BalloonNative Function(
    ffi
        .Pointer<ffi.Void>) _BalloonNative_ManoeuvreBalloon_init = lib.library
    .lookup<ffi.NativeFunction<BalloonNative Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_Balloon_ManoeuvreBalloon_init')
    .asFunction(isLeaf: true);
final BalloonNative Function(
    ffi.Pointer<
        ffi.Void>) _BalloonNative_ManoeuvreWithLaneSignBalloon_init = lib
    .library
    .lookup<ffi.NativeFunction<BalloonNative Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_Balloon_ManoeuvreWithLaneSignBalloon_init')
    .asFunction(isLeaf: true);
final BalloonNative Function(
    ffi
        .Pointer<ffi.Void>) _BalloonNative_LaneSignBalloon_init = lib.library
    .lookup<ffi.NativeFunction<BalloonNative Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_Balloon_LaneSignBalloon_init')
    .asFunction(isLeaf: true);
final BalloonNative Function(
    ffi
        .Pointer<ffi.Void>) _BalloonNative_RouteSummaryBalloon_init = lib
    .library
    .lookup<ffi.NativeFunction<BalloonNative Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_Balloon_RouteSummaryBalloon_init')
    .asFunction(isLeaf: true);
final BalloonNative Function(
    ffi
        .Pointer<ffi.Void>) _BalloonNative_AlternativeBalloon_init = lib.library
    .lookup<ffi.NativeFunction<BalloonNative Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_Balloon_AlternativeBalloon_init')
    .asFunction(isLeaf: true);
