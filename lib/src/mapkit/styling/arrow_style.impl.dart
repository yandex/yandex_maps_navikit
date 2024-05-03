part of 'arrow_style.dart';

@bindings_annotations.WeakInterface('mapkit.styling.ArrowStyle')
@bindings_annotations.ContainerData(
    toNative: 'ArrowStyleImpl.getNativePtr',
    toPlatform:
        '(val) => ArrowStyleImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'ArrowStyle')
class ArrowStyleImpl implements ArrowStyle, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_ArrowStyle_free.cast());

  /// @nodoc
  ArrowStyleImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  ArrowStyleImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory ArrowStyleImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(ArrowStyle? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as ArrowStyleImpl).ptr;
  }

  core.bool isValid() {
    return _ArrowStyle_check(ptr);
  }

  @internal

  /// @nodoc
  static ArrowStyle? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return ArrowStyleImpl.fromNativePtr(ptr);
  }

  void setOutlineWidth(
      mapkit_styling_proportion_function.StylingProportionFunction
          outlineWidth) {
    _ArrowStyle_setOutlineWidth(
        ptr,
        mapkit_styling_proportion_function.StylingProportionFunctionImpl
            .toNative(outlineWidth));
  }

  void setLength(
      mapkit_styling_proportion_function.StylingProportionFunction length) {
    _ArrowStyle_setLength(
        ptr,
        mapkit_styling_proportion_function.StylingProportionFunctionImpl
            .toNative(length));
  }

  void setTriangleHeight(
      mapkit_styling_proportion_function.StylingProportionFunction
          triangleHeight) {
    _ArrowStyle_setTriangleHeight(
        ptr,
        mapkit_styling_proportion_function.StylingProportionFunctionImpl
            .toNative(triangleHeight));
  }

  void setFillColor(ui.Color fillColor) {
    _ArrowStyle_setFillColor(ptr, to_native.toNativeColor(fillColor));
  }

  void setOutlineColor(ui.Color outlineColor) {
    _ArrowStyle_setOutlineColor(ptr, to_native.toNativeColor(outlineColor));
  }

  void setMinZoomVisible(core.double? minZoom) {
    _ArrowStyle_setMinZoomVisible(ptr, to_native.toNativePtrFloat(minZoom));
  }
}

final _ArrowStyle_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_ArrowStyle_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _ArrowStyle_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_ArrowStyle_check')
    .asFunction(isLeaf: true);

final void Function(ffi.Pointer<ffi.Void>,
        mapkit_styling_proportion_function.StylingProportionFunctionNative)
    _ArrowStyle_setOutlineWidth = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        mapkit_styling_proportion_function
                            .StylingProportionFunctionNative)>>(
            'yandex_flutter_mapkit_styling_ArrowStyle_setOutlineWidth')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>,
        mapkit_styling_proportion_function.StylingProportionFunctionNative)
    _ArrowStyle_setLength = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        mapkit_styling_proportion_function
                            .StylingProportionFunctionNative)>>(
            'yandex_flutter_mapkit_styling_ArrowStyle_setLength')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>,
        mapkit_styling_proportion_function.StylingProportionFunctionNative)
    _ArrowStyle_setTriangleHeight = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        mapkit_styling_proportion_function
                            .StylingProportionFunctionNative)>>(
            'yandex_flutter_mapkit_styling_ArrowStyle_setTriangleHeight')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeColor)
    _ArrowStyle_setFillColor = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeColor)>>(
            'yandex_flutter_mapkit_styling_ArrowStyle_setFillColor')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeColor)
    _ArrowStyle_setOutlineColor = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeColor)>>(
            'yandex_flutter_mapkit_styling_ArrowStyle_setOutlineColor')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _ArrowStyle_setMinZoomVisible = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_styling_ArrowStyle_setMinZoomVisible')
        .asFunction();
