part of 'balloon.dart';

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
    toNative: 'ManoeuvreImpl.toPointer',
    toPlatform: '(val) => ManoeuvreImpl.fromPointer(val, needFree: false)',
    platformType: 'Manoeuvre')
extension ManoeuvreImpl on Manoeuvre {
  static Manoeuvre fromNative(ManoeuvreNative native) {
    return Manoeuvre(
        directions_driving_action.DrivingActionImpl.fromInt(native.action),
        mapkit_localized_value.LocalizedValueImpl.fromNative(native.distance),
        nextRoadName:
            to_platform.toPlatformFromPointerString(native.nextRoadName));
  }

  static ManoeuvreNative toNative(Manoeuvre obj) {
    return _ManoeuvreNativeInit(
        directions_driving_action.DrivingActionImpl.toInt(obj.action),
        mapkit_localized_value.LocalizedValueImpl.toNative(obj.distance),
        to_native.toNativePtrString(obj.nextRoadName));
  }

  static Manoeuvre? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = ManoeuvreImpl.fromNative(ptr.cast<ManoeuvreNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(Manoeuvre? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ManoeuvreNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'ManoeuvreBalloonImpl.getNativePtr',
    toPlatform:
        '(val) => ManoeuvreBalloonImpl.fromPointer(val, needFree: false)',
    platformType: 'ManoeuvreBalloon')
final class ManoeuvreBalloonImpl extends ManoeuvreBalloon {
  ManoeuvreBalloonImpl(Manoeuvre manoeuvre,
      directions_driving_direction_signs.DrivingDirectionSign? directionSign)
      : this.fromNativePtr(_ManoeuvreBalloon_init(
            ManoeuvreImpl.toNative(manoeuvre),
            directions_driving_direction_signs.DrivingDirectionSignImpl
                .getNativePtr(directionSign)));

  @core.override
  late final manoeuvre =
      ManoeuvreImpl.fromNative(_ManoeuvreBalloon_get_manoeuvre(_ptr));
  @core.override
  late final directionSign =
      directions_driving_direction_signs.DrivingDirectionSignImpl
          .fromOptionalPtr(_ManoeuvreBalloon_get_directionSign(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_ManoeuvreBalloon_free.cast());

  ManoeuvreBalloonImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(ManoeuvreBalloon? obj) {
    return (obj as ManoeuvreBalloonImpl?)?._ptr ?? ffi.nullptr;
  }

  static ManoeuvreBalloon? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : ManoeuvreBalloonImpl.fromNativePtr(ptr);
  }

  static ManoeuvreBalloon? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = ManoeuvreBalloonImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
    toNative: 'ManoeuvreWithLaneSignBalloonImpl.getNativePtr',
    toPlatform:
        '(val) => ManoeuvreWithLaneSignBalloonImpl.fromPointer(val, needFree: false)',
    platformType: 'ManoeuvreWithLaneSignBalloon')
final class ManoeuvreWithLaneSignBalloonImpl
    extends ManoeuvreWithLaneSignBalloon {
  ManoeuvreWithLaneSignBalloonImpl(
      Manoeuvre manoeuvre,
      directions_driving_lane.DrivingLaneSign laneSign,
      directions_driving_direction_signs.DrivingDirectionSign? directionSign)
      : this.fromNativePtr(_ManoeuvreWithLaneSignBalloon_init(
            ManoeuvreImpl.toNative(manoeuvre),
            directions_driving_lane.DrivingLaneSignImpl.getNativePtr(laneSign),
            directions_driving_direction_signs.DrivingDirectionSignImpl
                .getNativePtr(directionSign)));

  @core.override
  late final manoeuvre = ManoeuvreImpl.fromNative(
      _ManoeuvreWithLaneSignBalloon_get_manoeuvre(_ptr));
  @core.override
  late final laneSign =
      directions_driving_lane.DrivingLaneSignImpl.fromNativePtr(
          _ManoeuvreWithLaneSignBalloon_get_laneSign(_ptr));
  @core.override
  late final directionSign = directions_driving_direction_signs
          .DrivingDirectionSignImpl
      .fromOptionalPtr(_ManoeuvreWithLaneSignBalloon_get_directionSign(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_ManoeuvreWithLaneSignBalloon_free.cast());

  ManoeuvreWithLaneSignBalloonImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(ManoeuvreWithLaneSignBalloon? obj) {
    return (obj as ManoeuvreWithLaneSignBalloonImpl?)?._ptr ?? ffi.nullptr;
  }

  static ManoeuvreWithLaneSignBalloon? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : ManoeuvreWithLaneSignBalloonImpl.fromNativePtr(ptr);
  }

  static ManoeuvreWithLaneSignBalloon? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = ManoeuvreWithLaneSignBalloonImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
    toNative: 'LaneSignBalloonImpl.getNativePtr',
    toPlatform:
        '(val) => LaneSignBalloonImpl.fromPointer(val, needFree: false)',
    platformType: 'LaneSignBalloon')
final class LaneSignBalloonImpl extends LaneSignBalloon {
  LaneSignBalloonImpl(directions_driving_lane.DrivingLaneSign laneSign,
      directions_driving_direction_signs.DrivingDirectionSign? directionSign)
      : this.fromNativePtr(_LaneSignBalloon_init(
            directions_driving_lane.DrivingLaneSignImpl.getNativePtr(laneSign),
            directions_driving_direction_signs.DrivingDirectionSignImpl
                .getNativePtr(directionSign)));

  @core.override
  late final laneSign =
      directions_driving_lane.DrivingLaneSignImpl.fromNativePtr(
          _LaneSignBalloon_get_laneSign(_ptr));
  @core.override
  late final directionSign =
      directions_driving_direction_signs.DrivingDirectionSignImpl
          .fromOptionalPtr(_LaneSignBalloon_get_directionSign(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_LaneSignBalloon_free.cast());

  LaneSignBalloonImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(LaneSignBalloon? obj) {
    return (obj as LaneSignBalloonImpl?)?._ptr ?? ffi.nullptr;
  }

  static LaneSignBalloon? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : LaneSignBalloonImpl.fromNativePtr(ptr);
  }

  static LaneSignBalloon? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = LaneSignBalloonImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
    toNative: 'RouteSummaryBalloonImpl.getNativePtr',
    toPlatform:
        '(val) => RouteSummaryBalloonImpl.fromPointer(val, needFree: false)',
    platformType: 'RouteSummaryBalloon')
final class RouteSummaryBalloonImpl extends RouteSummaryBalloon {
  RouteSummaryBalloonImpl(
      directions_driving_route.DrivingSummary summary,
      core.List<core.String> tags,
      directions_driving_weight.DrivingWeight? relativeWeight)
      : this.fromNativePtr(_RouteSummaryBalloon_init(
            directions_driving_route.DrivingSummaryImpl.toNative(summary),
            to_native.toNativeVectorString(tags),
            directions_driving_weight.DrivingWeightImpl.toPointer(
                relativeWeight)));

  @core.override
  late final summary = directions_driving_route.DrivingSummaryImpl.fromNative(
      _RouteSummaryBalloon_get_summary(_ptr));
  @core.override
  late final tags =
      to_platform.toVectorString(_RouteSummaryBalloon_get_tags(_ptr));
  @core.override
  late final relativeWeight =
      directions_driving_weight.DrivingWeightImpl.fromPointer(
          _RouteSummaryBalloon_get_relativeWeight(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_RouteSummaryBalloon_free.cast());

  RouteSummaryBalloonImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(RouteSummaryBalloon? obj) {
    return (obj as RouteSummaryBalloonImpl?)?._ptr ?? ffi.nullptr;
  }

  static RouteSummaryBalloon? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : RouteSummaryBalloonImpl.fromNativePtr(ptr);
  }

  static RouteSummaryBalloon? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = RouteSummaryBalloonImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
    toNative: 'AlternativeBalloonImpl.getNativePtr',
    toPlatform:
        '(val) => AlternativeBalloonImpl.fromPointer(val, needFree: false)',
    platformType: 'AlternativeBalloon')
final class AlternativeBalloonImpl extends AlternativeBalloon {
  AlternativeBalloonImpl(directions_driving_route.DrivingSummary summary,
      directions_driving_weight.DrivingWeight relativeWeight)
      : this.fromNativePtr(_AlternativeBalloon_init(
            directions_driving_route.DrivingSummaryImpl.toNative(summary),
            directions_driving_weight.DrivingWeightImpl.toNative(
                relativeWeight)));

  @core.override
  late final summary = directions_driving_route.DrivingSummaryImpl.fromNative(
      _AlternativeBalloon_get_summary(_ptr));
  @core.override
  late final relativeWeight =
      directions_driving_weight.DrivingWeightImpl.fromNative(
          _AlternativeBalloon_get_relativeWeight(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_AlternativeBalloon_free.cast());

  AlternativeBalloonImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(AlternativeBalloon? obj) {
    return (obj as AlternativeBalloonImpl?)?._ptr ?? ffi.nullptr;
  }

  static AlternativeBalloon? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : AlternativeBalloonImpl.fromNativePtr(ptr);
  }

  static AlternativeBalloon? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = AlternativeBalloonImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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

final class _BalloonNativeData extends ffi.Union {
  external ffi.Pointer<ffi.Void> manoeuvre;
  external ffi.Pointer<ffi.Void> manoeuvreWithLaneSign;
  external ffi.Pointer<ffi.Void> laneSign;
  external ffi.Pointer<ffi.Void> routeSummary;
  external ffi.Pointer<ffi.Void> alternative;
}

final class BalloonNative extends ffi.Struct {
  @ffi.Int()
  external core.int tag;
  external _BalloonNativeData data;
}

@bindings_annotations.ContainerData(
    toNative: 'BalloonImpl.toPointer',
    toPlatform: '(val) => BalloonImpl.fromPointer(val, needFree: false)',
    platformType: 'Balloon')
extension BalloonImpl on Balloon {
  static BalloonNative toNative(Balloon obj) {
    if (obj._value is ManoeuvreBalloon) {
      return _BalloonNative_ManoeuvreBalloon_init(
          ManoeuvreBalloonImpl.getNativePtr(obj._value));
    }
    if (obj._value is ManoeuvreWithLaneSignBalloon) {
      return _BalloonNative_ManoeuvreWithLaneSignBalloon_init(
          ManoeuvreWithLaneSignBalloonImpl.getNativePtr(obj._value));
    }
    if (obj._value is LaneSignBalloon) {
      return _BalloonNative_LaneSignBalloon_init(
          LaneSignBalloonImpl.getNativePtr(obj._value));
    }
    if (obj._value is RouteSummaryBalloon) {
      return _BalloonNative_RouteSummaryBalloon_init(
          RouteSummaryBalloonImpl.getNativePtr(obj._value));
    }
    if (obj._value is AlternativeBalloon) {
      return _BalloonNative_AlternativeBalloon_init(
          AlternativeBalloonImpl.getNativePtr(obj._value));
    }
    throw core.TypeError();
  }

  static Balloon toPlatform(BalloonNative obj) {
    switch (obj.tag) {
      case 0:
        return Balloon.fromManoeuvreBalloon(
            ManoeuvreBalloonImpl.fromNativePtr(obj.data.manoeuvre));
      case 1:
        return Balloon.fromManoeuvreWithLaneSignBalloon(
            ManoeuvreWithLaneSignBalloonImpl.fromNativePtr(
                obj.data.manoeuvreWithLaneSign));
      case 2:
        return Balloon.fromLaneSignBalloon(
            LaneSignBalloonImpl.fromNativePtr(obj.data.laneSign));
      case 3:
        return Balloon.fromRouteSummaryBalloon(
            RouteSummaryBalloonImpl.fromNativePtr(obj.data.routeSummary));
      case 4:
        return Balloon.fromAlternativeBalloon(
            AlternativeBalloonImpl.fromNativePtr(obj.data.alternative));
    }
    throw core.TypeError();
  }

  static Balloon? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = toPlatform(ptr.cast<BalloonNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(Balloon? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<BalloonNative>();
    result.ref = toNative(val);

    return result.cast();
  }
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
