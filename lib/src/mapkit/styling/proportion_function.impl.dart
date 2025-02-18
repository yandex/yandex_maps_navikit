part of 'proportion_function.dart';

@bindings_annotations.ContainerData(
    toNative: 'StylingConstantFunctionPointsImpl.getNativePtr',
    toPlatform:
        '(val) => StylingConstantFunctionPointsImpl.fromPointer(val, needFree: false)',
    platformType: 'StylingConstantFunctionPoints')
final class StylingConstantFunctionPointsImpl
    extends StylingConstantFunctionPoints {
  StylingConstantFunctionPointsImpl(core.double value)
      : this.fromNativePtr(_StylingConstantFunctionPoints_init(value));

  @core.override
  late final value = _StylingConstantFunctionPoints_get_value(_ptr);

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_StylingConstantFunctionPoints_free.cast());

  StylingConstantFunctionPointsImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      StylingConstantFunctionPoints? obj) {
    return (obj as StylingConstantFunctionPointsImpl?)?._ptr ?? ffi.nullptr;
  }

  static StylingConstantFunctionPoints? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : StylingConstantFunctionPointsImpl.fromNativePtr(ptr);
  }

  static StylingConstantFunctionPoints? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = StylingConstantFunctionPointsImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
    toNative: 'StylingLinearZoomFunctionPointsImpl.getNativePtr',
    toPlatform:
        '(val) => StylingLinearZoomFunctionPointsImpl.fromPointer(val, needFree: false)',
    platformType: 'StylingLinearZoomFunctionPoints')
final class StylingLinearZoomFunctionPointsImpl
    extends StylingLinearZoomFunctionPoints {
  StylingLinearZoomFunctionPointsImpl(core.List<math.Point<core.double>> points)
      : this.fromNativePtr(_StylingLinearZoomFunctionPoints_init(
            to_native.toNativeVectorPoint(points)));

  @core.override
  late final points = to_platform
      .toVectorPoint(_StylingLinearZoomFunctionPoints_get_points(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_StylingLinearZoomFunctionPoints_free.cast());

  StylingLinearZoomFunctionPointsImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      StylingLinearZoomFunctionPoints? obj) {
    return (obj as StylingLinearZoomFunctionPointsImpl?)?._ptr ?? ffi.nullptr;
  }

  static StylingLinearZoomFunctionPoints? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : StylingLinearZoomFunctionPointsImpl.fromNativePtr(ptr);
  }

  static StylingLinearZoomFunctionPoints? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = StylingLinearZoomFunctionPointsImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
    toNative: 'StylingLinearTiltFunctionPointsImpl.getNativePtr',
    toPlatform:
        '(val) => StylingLinearTiltFunctionPointsImpl.fromPointer(val, needFree: false)',
    platformType: 'StylingLinearTiltFunctionPoints')
final class StylingLinearTiltFunctionPointsImpl
    extends StylingLinearTiltFunctionPoints {
  StylingLinearTiltFunctionPointsImpl(core.List<math.Point<core.double>> points)
      : this.fromNativePtr(_StylingLinearTiltFunctionPoints_init(
            to_native.toNativeVectorPoint(points)));

  @core.override
  late final points = to_platform
      .toVectorPoint(_StylingLinearTiltFunctionPoints_get_points(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_StylingLinearTiltFunctionPoints_free.cast());

  StylingLinearTiltFunctionPointsImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      StylingLinearTiltFunctionPoints? obj) {
    return (obj as StylingLinearTiltFunctionPointsImpl?)?._ptr ?? ffi.nullptr;
  }

  static StylingLinearTiltFunctionPoints? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : StylingLinearTiltFunctionPointsImpl.fromNativePtr(ptr);
  }

  static StylingLinearTiltFunctionPoints? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = StylingLinearTiltFunctionPointsImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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
    toNative: 'StylingBilinearFunctionMatrixImpl.getNativePtr',
    toPlatform:
        '(val) => StylingBilinearFunctionMatrixImpl.fromPointer(val, needFree: false)',
    platformType: 'StylingBilinearFunctionMatrix')
final class StylingBilinearFunctionMatrixImpl
    extends StylingBilinearFunctionMatrix {
  StylingBilinearFunctionMatrixImpl(core.List<core.double> zooms,
      core.List<core.double> tilts, core.List<core.List<core.double>> points)
      : this.fromNativePtr(_StylingBilinearFunctionMatrix_init(
            to_native.toNativeVectorFloat(zooms),
            to_native.toNativeVectorFloat(tilts),
            to_native.toNativeVectorVectorFloat(points)));

  @core.override
  late final zooms =
      to_platform.toVectorFloat(_StylingBilinearFunctionMatrix_get_zooms(_ptr));
  @core.override
  late final tilts =
      to_platform.toVectorFloat(_StylingBilinearFunctionMatrix_get_tilts(_ptr));
  @core.override
  late final points = to_platform
      .toVectorVectorFloat(_StylingBilinearFunctionMatrix_get_points(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_StylingBilinearFunctionMatrix_free.cast());

  StylingBilinearFunctionMatrixImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      StylingBilinearFunctionMatrix? obj) {
    return (obj as StylingBilinearFunctionMatrixImpl?)?._ptr ?? ffi.nullptr;
  }

  static StylingBilinearFunctionMatrix? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : StylingBilinearFunctionMatrixImpl.fromNativePtr(ptr);
  }

  static StylingBilinearFunctionMatrix? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = StylingBilinearFunctionMatrixImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

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

final class _StylingProportionFunctionNativeData extends ffi.Union {
  external ffi.Pointer<ffi.Void> constantFunction;
  external ffi.Pointer<ffi.Void> zoomFunction;
  external ffi.Pointer<ffi.Void> tiltFunction;
  external ffi.Pointer<ffi.Void> zoomTiltFunction;
}

final class StylingProportionFunctionNative extends ffi.Struct {
  @ffi.Int()
  external core.int tag;
  external _StylingProportionFunctionNativeData data;
}

@bindings_annotations.ContainerData(
    toNative: 'StylingProportionFunctionImpl.toPointer',
    toPlatform:
        '(val) => StylingProportionFunctionImpl.fromPointer(val, needFree: false)',
    platformType: 'StylingProportionFunction')
extension StylingProportionFunctionImpl on StylingProportionFunction {
  static StylingProportionFunctionNative toNative(
      StylingProportionFunction obj) {
    if (obj._value is StylingConstantFunctionPoints) {
      return _ProportionFunctionNative_ConstantFunctionPoints_init(
          StylingConstantFunctionPointsImpl.getNativePtr(obj._value));
    }
    if (obj._value is StylingLinearZoomFunctionPoints) {
      return _ProportionFunctionNative_LinearZoomFunctionPoints_init(
          StylingLinearZoomFunctionPointsImpl.getNativePtr(obj._value));
    }
    if (obj._value is StylingLinearTiltFunctionPoints) {
      return _ProportionFunctionNative_LinearTiltFunctionPoints_init(
          StylingLinearTiltFunctionPointsImpl.getNativePtr(obj._value));
    }
    if (obj._value is StylingBilinearFunctionMatrix) {
      return _ProportionFunctionNative_BilinearFunctionMatrix_init(
          StylingBilinearFunctionMatrixImpl.getNativePtr(obj._value));
    }
    throw core.TypeError();
  }

  static StylingProportionFunction toPlatform(
      StylingProportionFunctionNative obj) {
    switch (obj.tag) {
      case 0:
        return StylingProportionFunction.fromConstantFunctionPoints(
            StylingConstantFunctionPointsImpl.fromNativePtr(
                obj.data.constantFunction));
      case 1:
        return StylingProportionFunction.fromLinearZoomFunctionPoints(
            StylingLinearZoomFunctionPointsImpl.fromNativePtr(
                obj.data.zoomFunction));
      case 2:
        return StylingProportionFunction.fromLinearTiltFunctionPoints(
            StylingLinearTiltFunctionPointsImpl.fromNativePtr(
                obj.data.tiltFunction));
      case 3:
        return StylingProportionFunction.fromBilinearFunctionMatrix(
            StylingBilinearFunctionMatrixImpl.fromNativePtr(
                obj.data.zoomTiltFunction));
    }
    throw core.TypeError();
  }

  static StylingProportionFunction? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = toPlatform(ptr.cast<StylingProportionFunctionNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(StylingProportionFunction? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<StylingProportionFunctionNative>();
    result.ref = toNative(val);

    return result.cast();
  }
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
