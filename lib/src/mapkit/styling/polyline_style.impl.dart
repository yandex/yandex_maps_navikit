part of 'polyline_style.dart';

@bindings_annotations.WeakInterface('mapkit.styling.PolylineStyle')
@bindings_annotations.ContainerData(
    toNative: 'PolylineStyleImpl.getNativePtr',
    toPlatform:
        '(val) => PolylineStyleImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'PolylineStyle')
class PolylineStyleImpl implements PolylineStyle, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_PolylineStyle_free.cast());

  /// @nodoc
  PolylineStyleImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  PolylineStyleImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory PolylineStyleImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(PolylineStyle? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as PolylineStyleImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _PolylineStyle_check(ptr);
  }

  @internal

  /// @nodoc
  static PolylineStyle? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PolylineStyleImpl.fromNativePtr(ptr);
  }

  void setStrokeWidth(
      mapkit_styling_proportion_function.StylingProportionFunction
          strokeWidth) {
    _PolylineStyle_setStrokeWidth(
        ptr,
        mapkit_styling_proportion_function.StylingProportionFunctionImpl
            .toNative(strokeWidth));
  }

  void setOutlineWidth(
      mapkit_styling_proportion_function.StylingProportionFunction
          outlineWidth) {
    _PolylineStyle_setOutlineWidth(
        ptr,
        mapkit_styling_proportion_function.StylingProportionFunctionImpl
            .toNative(outlineWidth));
  }

  void setStrokeColor(ui.Color strokeColor) {
    _PolylineStyle_setStrokeColor(ptr, to_native.toNativeColor(strokeColor));
  }

  void setOutlineColor(ui.Color outlineColor) {
    _PolylineStyle_setOutlineColor(ptr, to_native.toNativeColor(outlineColor));
  }

  void setInnerOutlineEnabled(core.bool innerOutlineEnabled) {
    _PolylineStyle_setInnerOutlineEnabled(ptr, innerOutlineEnabled);
  }

  void setTurnRadius(core.double turnRadius) {
    _PolylineStyle_setTurnRadius(ptr, turnRadius);
  }

  void setArcApproximationStep(core.double arcApproximationStep) {
    _PolylineStyle_setArcApproximationStep(ptr, arcApproximationStep);
  }

  void setDashLength(core.double dashLength) {
    _PolylineStyle_setDashLength(ptr, dashLength);
  }

  void setGapLength(core.double gapLength) {
    _PolylineStyle_setGapLength(ptr, gapLength);
  }

  void setDashOffset(core.double dashOffset) {
    _PolylineStyle_setDashOffset(ptr, dashOffset);
  }
}

final _PolylineStyle_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_PolylineStyle_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _PolylineStyle_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_PolylineStyle_check')
    .asFunction(isLeaf: true);

final void Function(ffi.Pointer<ffi.Void>,
        mapkit_styling_proportion_function.StylingProportionFunctionNative)
    _PolylineStyle_setStrokeWidth = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        mapkit_styling_proportion_function
                            .StylingProportionFunctionNative)>>(
            'yandex_flutter_mapkit_styling_PolylineStyle_setStrokeWidth')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>,
        mapkit_styling_proportion_function.StylingProportionFunctionNative)
    _PolylineStyle_setOutlineWidth = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        mapkit_styling_proportion_function
                            .StylingProportionFunctionNative)>>(
            'yandex_flutter_mapkit_styling_PolylineStyle_setOutlineWidth')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeColor)
    _PolylineStyle_setStrokeColor = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeColor)>>(
            'yandex_flutter_mapkit_styling_PolylineStyle_setStrokeColor')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeColor)
    _PolylineStyle_setOutlineColor = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeColor)>>(
            'yandex_flutter_mapkit_styling_PolylineStyle_setOutlineColor')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _PolylineStyle_setInnerOutlineEnabled = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_mapkit_styling_PolylineStyle_setInnerOutlineEnabled')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double)
    _PolylineStyle_setTurnRadius = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float)>>(
            'yandex_flutter_mapkit_styling_PolylineStyle_setTurnRadius')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .double) _PolylineStyle_setArcApproximationStep = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float)>>(
        'yandex_flutter_mapkit_styling_PolylineStyle_setArcApproximationStep')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double)
    _PolylineStyle_setDashLength = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float)>>(
            'yandex_flutter_mapkit_styling_PolylineStyle_setDashLength')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double)
    _PolylineStyle_setGapLength = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float)>>(
            'yandex_flutter_mapkit_styling_PolylineStyle_setGapLength')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double)
    _PolylineStyle_setDashOffset = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float)>>(
            'yandex_flutter_mapkit_styling_PolylineStyle_setDashOffset')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _PolylineStyle_set = lib
    .library
    .lookup<
        ffi.NativeFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Int64)>>('yandex_flutter_mapkit_styling_PolylineStyle_set_')
    .asFunction(isLeaf: true);
