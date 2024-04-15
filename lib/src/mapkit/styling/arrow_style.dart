import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:ui' as ui;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/mapkit/styling/proportion_function.dart'
    as mapkit_styling_proportion_function;

part 'arrow_style.containers.dart';

@bindings_annotations.WeakInterface('mapkit.styling.ArrowStyle')
@bindings_annotations.ContainerData(
    toNative: 'ArrowStyle.getNativePtr',
    toPlatform:
        '(val) => ArrowStyle.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class ArrowStyle implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_ArrowStyle_free.cast());

  /// @nodoc
  ArrowStyle.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  ArrowStyle.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory ArrowStyle.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(ArrowStyle? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _ArrowStyle_check(ptr);
  }

  @internal

  /// @nodoc
  static ArrowStyle? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return ArrowStyle.fromNativePtr(ptr);
  }

  /// Width of the arrow's outline in units. Default: 0
  void setOutlineWidth(
      mapkit_styling_proportion_function.StylingProportionFunction
          outlineWidth) {
    _ArrowStyle_setOutlineWidth(
        ptr,
        mapkit_styling_proportion_function.StylingProportionFunction.toNative(
            outlineWidth));
  }

  /// Overall length of the arrow (including the tip) in units. Default:
  /// constantValue: 90
  void setLength(
      mapkit_styling_proportion_function.StylingProportionFunction length) {
    _ArrowStyle_setLength(
        ptr,
        mapkit_styling_proportion_function.StylingProportionFunction.toNative(
            length));
  }

  /// Height of the arrow tip in units. Default: constantValue: 24
  void setTriangleHeight(
      mapkit_styling_proportion_function.StylingProportionFunction
          triangleHeight) {
    _ArrowStyle_setTriangleHeight(
        ptr,
        mapkit_styling_proportion_function.StylingProportionFunction.toNative(
            triangleHeight));
  }

  /// Fill color of the arrow. Default: RGBA 0xFFFFFFFF.
  void setFillColor(ui.Color fillColor) {
    _ArrowStyle_setFillColor(ptr, to_native.toNativeColor(fillColor));
  }

  /// Color of the arrow's outline. Default: RGBA 0x000000FF.
  void setOutlineColor(ui.Color outlineColor) {
    _ArrowStyle_setOutlineColor(ptr, to_native.toNativeColor(outlineColor));
  }

  /// Minimal zoom for maneuvers to be visible. Default: null
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
