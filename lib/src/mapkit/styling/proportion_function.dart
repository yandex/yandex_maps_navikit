import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:math' as math;
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

part 'proportion_function.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'StylingConstantFunctionPoints.toPointer',
    toPlatform:
        '(val) => StylingConstantFunctionPoints.fromPointer(val, needFree: false)')
class StylingConstantFunctionPoints implements ffi.Finalizable {
  late final value = _StylingConstantFunctionPoints_get_value(_ptr);

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_StylingConstantFunctionPoints_free.cast());

  StylingConstantFunctionPoints(core.double value)
      : this.fromNativePtr(_StylingConstantFunctionPoints_init(value));

  /// @nodoc
  @internal
  StylingConstantFunctionPoints.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      StylingConstantFunctionPoints? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static StylingConstantFunctionPoints? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return StylingConstantFunctionPoints.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static StylingConstantFunctionPoints? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = StylingConstantFunctionPoints.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(StylingConstantFunctionPoints? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _StylingConstantFunctionPoints_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _StylingConstantFunctionPoints_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_styling_StylingConstantFunctionPoints_clone')
        .asFunction(isLeaf: true);

final _StylingConstantFunctionPoints_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_mapkit_styling_StylingConstantFunctionPoints_free');

final ffi.Pointer<ffi.Void> Function(core.double)
    _StylingConstantFunctionPoints_init = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Float)>>(
            'yandex_flutter_mapkit_styling_StylingConstantFunctionPoints_init')
        .asFunction(isLeaf: true);

final core.double Function(
    ffi
        .Pointer<ffi.Void>) _StylingConstantFunctionPoints_get_value = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Float Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_StylingConstantFunctionPoints_get_value')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'StylingLinearZoomFunctionPoints.toPointer',
    toPlatform:
        '(val) => StylingLinearZoomFunctionPoints.fromPointer(val, needFree: false)')
class StylingLinearZoomFunctionPoints implements ffi.Finalizable {
  late final points = to_platform
      .toVectorPoint(_StylingLinearZoomFunctionPoints_get_points(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_StylingLinearZoomFunctionPoints_free.cast());

  StylingLinearZoomFunctionPoints(core.List<math.Point<core.double>> points)
      : this.fromNativePtr(_StylingLinearZoomFunctionPoints_init(
            to_native.toNativeVectorPoint(points)));

  /// @nodoc
  @internal
  StylingLinearZoomFunctionPoints.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      StylingLinearZoomFunctionPoints? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static StylingLinearZoomFunctionPoints? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return StylingLinearZoomFunctionPoints.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static StylingLinearZoomFunctionPoints? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = StylingLinearZoomFunctionPoints.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(StylingLinearZoomFunctionPoints? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _StylingLinearZoomFunctionPoints_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _StylingLinearZoomFunctionPoints_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_StylingLinearZoomFunctionPoints_clone')
    .asFunction(isLeaf: true);

final _StylingLinearZoomFunctionPoints_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_mapkit_styling_StylingLinearZoomFunctionPoints_free');

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _StylingLinearZoomFunctionPoints_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_StylingLinearZoomFunctionPoints_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _StylingLinearZoomFunctionPoints_get_points = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_StylingLinearZoomFunctionPoints_get_points')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'StylingLinearTiltFunctionPoints.toPointer',
    toPlatform:
        '(val) => StylingLinearTiltFunctionPoints.fromPointer(val, needFree: false)')
class StylingLinearTiltFunctionPoints implements ffi.Finalizable {
  late final points = to_platform
      .toVectorPoint(_StylingLinearTiltFunctionPoints_get_points(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_StylingLinearTiltFunctionPoints_free.cast());

  StylingLinearTiltFunctionPoints(core.List<math.Point<core.double>> points)
      : this.fromNativePtr(_StylingLinearTiltFunctionPoints_init(
            to_native.toNativeVectorPoint(points)));

  /// @nodoc
  @internal
  StylingLinearTiltFunctionPoints.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      StylingLinearTiltFunctionPoints? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static StylingLinearTiltFunctionPoints? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return StylingLinearTiltFunctionPoints.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static StylingLinearTiltFunctionPoints? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = StylingLinearTiltFunctionPoints.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(StylingLinearTiltFunctionPoints? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _StylingLinearTiltFunctionPoints_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _StylingLinearTiltFunctionPoints_clone = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_StylingLinearTiltFunctionPoints_clone')
    .asFunction(isLeaf: true);

final _StylingLinearTiltFunctionPoints_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_mapkit_styling_StylingLinearTiltFunctionPoints_free');

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _StylingLinearTiltFunctionPoints_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_StylingLinearTiltFunctionPoints_init')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _StylingLinearTiltFunctionPoints_get_points = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_StylingLinearTiltFunctionPoints_get_points')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'StylingBilinearFunctionMatrix.toPointer',
    toPlatform:
        '(val) => StylingBilinearFunctionMatrix.fromPointer(val, needFree: false)')
class StylingBilinearFunctionMatrix implements ffi.Finalizable {
  late final zooms =
      to_platform.toVectorFloat(_StylingBilinearFunctionMatrix_get_zooms(_ptr));
  late final tilts =
      to_platform.toVectorFloat(_StylingBilinearFunctionMatrix_get_tilts(_ptr));
  late final points = to_platform
      .toVectorVectorFloat(_StylingBilinearFunctionMatrix_get_points(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_StylingBilinearFunctionMatrix_free.cast());

  StylingBilinearFunctionMatrix(core.List<core.double> zooms,
      core.List<core.double> tilts, core.List<core.List<core.double>> points)
      : this.fromNativePtr(_StylingBilinearFunctionMatrix_init(
            to_native.toNativeVectorFloat(zooms),
            to_native.toNativeVectorFloat(tilts),
            to_native.toNativeVectorVectorFloat(points)));

  /// @nodoc
  @internal
  StylingBilinearFunctionMatrix.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(
      StylingBilinearFunctionMatrix? obj) {
    if (obj == null) return ffi.nullptr;
    return obj._ptr;
  }

  /// @nodoc
  @internal
  static StylingBilinearFunctionMatrix? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return StylingBilinearFunctionMatrix.fromNativePtr(ptr);
  }

  /// @nodoc
  @internal
  static StylingBilinearFunctionMatrix? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = StylingBilinearFunctionMatrix.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(StylingBilinearFunctionMatrix? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<ffi.Pointer<ffi.Void>>();
    result.value = _StylingBilinearFunctionMatrix_clone(getNativePtr(val));

    return result.cast<ffi.Void>();
  }
}

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _StylingBilinearFunctionMatrix_clone = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_styling_StylingBilinearFunctionMatrix_clone')
        .asFunction(isLeaf: true);

final _StylingBilinearFunctionMatrix_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_mapkit_styling_StylingBilinearFunctionMatrix_free');

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _StylingBilinearFunctionMatrix_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_styling_StylingBilinearFunctionMatrix_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _StylingBilinearFunctionMatrix_get_zooms = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_StylingBilinearFunctionMatrix_get_zooms')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _StylingBilinearFunctionMatrix_get_tilts = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_StylingBilinearFunctionMatrix_get_tilts')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _StylingBilinearFunctionMatrix_get_points = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_StylingBilinearFunctionMatrix_get_points')
    .asFunction(isLeaf: true);

/// @nodoc
@internal
final class StylingProportionFunctionNativeData extends ffi.Union {
  external ffi.Pointer<ffi.Void> constantFunction;
  external ffi.Pointer<ffi.Void> zoomFunction;
  external ffi.Pointer<ffi.Void> tiltFunction;
  external ffi.Pointer<ffi.Void> zoomTiltFunction;
}

/// @nodoc
@internal
final class StylingProportionFunctionNative extends ffi.Struct {
  @ffi.Int()
  external core.int tag;
  external StylingProportionFunctionNativeData data;
}

@bindings_annotations.ContainerData(
    toNative: 'StylingProportionFunction.toPointer',
    toPlatform:
        '(val) => StylingProportionFunction.fromPointer(val, needFree: false)')
class StylingProportionFunction {
  const StylingProportionFunction.fromConstantFunctionPoints(
      StylingConstantFunctionPoints constantFunction)
      : _value = constantFunction;

  const StylingProportionFunction.fromLinearZoomFunctionPoints(
      StylingLinearZoomFunctionPoints zoomFunction)
      : _value = zoomFunction;

  const StylingProportionFunction.fromLinearTiltFunctionPoints(
      StylingLinearTiltFunctionPoints tiltFunction)
      : _value = tiltFunction;

  const StylingProportionFunction.fromBilinearFunctionMatrix(
      StylingBilinearFunctionMatrix zoomTiltFunction)
      : _value = zoomTiltFunction;

  /// @nodoc
  @internal
  static StylingProportionFunction toPlatform(
      StylingProportionFunctionNative obj) {
    switch (obj.tag) {
      case 0:
        return StylingProportionFunction.fromConstantFunctionPoints(
            StylingConstantFunctionPoints.fromNativePtr(
                obj.data.constantFunction));
      case 1:
        return StylingProportionFunction.fromLinearZoomFunctionPoints(
            StylingLinearZoomFunctionPoints.fromNativePtr(
                obj.data.zoomFunction));
      case 2:
        return StylingProportionFunction.fromLinearTiltFunctionPoints(
            StylingLinearTiltFunctionPoints.fromNativePtr(
                obj.data.tiltFunction));
      case 3:
        return StylingProportionFunction.fromBilinearFunctionMatrix(
            StylingBilinearFunctionMatrix.fromNativePtr(
                obj.data.zoomTiltFunction));
    }
    throw core.TypeError();
  }

  /// @nodoc
  @internal
  static StylingProportionFunctionNative toNative(
      StylingProportionFunction obj) {
    if (obj._value is StylingConstantFunctionPoints) {
      return _ProportionFunctionNative_ConstantFunctionPoints_init(
          StylingConstantFunctionPoints.getNativePtr(obj._value));
    }
    if (obj._value is StylingLinearZoomFunctionPoints) {
      return _ProportionFunctionNative_LinearZoomFunctionPoints_init(
          StylingLinearZoomFunctionPoints.getNativePtr(obj._value));
    }
    if (obj._value is StylingLinearTiltFunctionPoints) {
      return _ProportionFunctionNative_LinearTiltFunctionPoints_init(
          StylingLinearTiltFunctionPoints.getNativePtr(obj._value));
    }
    if (obj._value is StylingBilinearFunctionMatrix) {
      return _ProportionFunctionNative_BilinearFunctionMatrix_init(
          StylingBilinearFunctionMatrix.getNativePtr(obj._value));
    }
    throw core.TypeError();
  }

  StylingConstantFunctionPoints? asConstantFunctionPoints() {
    if (_value is StylingConstantFunctionPoints) {
      return _value;
    }
    return null;
  }

  StylingLinearZoomFunctionPoints? asLinearZoomFunctionPoints() {
    if (_value is StylingLinearZoomFunctionPoints) {
      return _value;
    }
    return null;
  }

  StylingLinearTiltFunctionPoints? asLinearTiltFunctionPoints() {
    if (_value is StylingLinearTiltFunctionPoints) {
      return _value;
    }
    return null;
  }

  StylingBilinearFunctionMatrix? asBilinearFunctionMatrix() {
    if (_value is StylingBilinearFunctionMatrix) {
      return _value;
    }
    return null;
  }

  /// Applies the passed function to the variant value.
  void when({
    required void Function(StylingConstantFunctionPoints value)
        onConstantFunctionPoints,
    required void Function(StylingLinearZoomFunctionPoints value)
        onLinearZoomFunctionPoints,
    required void Function(StylingLinearTiltFunctionPoints value)
        onLinearTiltFunctionPoints,
    required void Function(StylingBilinearFunctionMatrix value)
        onBilinearFunctionMatrix,
  }) {
    if (_value is StylingConstantFunctionPoints) {
      return onConstantFunctionPoints(_value as StylingConstantFunctionPoints);
    }
    if (_value is StylingLinearZoomFunctionPoints) {
      return onLinearZoomFunctionPoints(
          _value as StylingLinearZoomFunctionPoints);
    }
    if (_value is StylingLinearTiltFunctionPoints) {
      return onLinearTiltFunctionPoints(
          _value as StylingLinearTiltFunctionPoints);
    }
    if (_value is StylingBilinearFunctionMatrix) {
      return onBilinearFunctionMatrix(_value as StylingBilinearFunctionMatrix);
    }
    assert(false);
  }

  /// @nodoc
  @internal
  static StylingProportionFunction? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = toPlatform(ptr.cast<StylingProportionFunctionNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(StylingProportionFunction? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<StylingProportionFunctionNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }

  final core.dynamic _value;
}

final StylingProportionFunctionNative Function(
    ffi.Pointer<
        ffi.Void>) _ProportionFunctionNative_ConstantFunctionPoints_init = lib
    .library
    .lookup<
            ffi.NativeFunction<
                StylingProportionFunctionNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_StylingProportionFunction_ConstantFunctionPoints_init')
    .asFunction(isLeaf: true);
final StylingProportionFunctionNative Function(
    ffi.Pointer<
        ffi.Void>) _ProportionFunctionNative_LinearZoomFunctionPoints_init = lib
    .library
    .lookup<
            ffi.NativeFunction<
                StylingProportionFunctionNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_StylingProportionFunction_LinearZoomFunctionPoints_init')
    .asFunction(isLeaf: true);
final StylingProportionFunctionNative Function(
    ffi.Pointer<
        ffi.Void>) _ProportionFunctionNative_LinearTiltFunctionPoints_init = lib
    .library
    .lookup<
            ffi.NativeFunction<
                StylingProportionFunctionNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_StylingProportionFunction_LinearTiltFunctionPoints_init')
    .asFunction(isLeaf: true);
final StylingProportionFunctionNative Function(
    ffi.Pointer<
        ffi.Void>) _ProportionFunctionNative_BilinearFunctionMatrix_init = lib
    .library
    .lookup<
            ffi.NativeFunction<
                StylingProportionFunctionNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_StylingProportionFunction_BilinearFunctionMatrix_init')
    .asFunction(isLeaf: true);
