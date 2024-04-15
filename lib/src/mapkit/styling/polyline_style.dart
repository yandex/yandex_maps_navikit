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

part 'polyline_style.containers.dart';

/// Zoom and tilt independent styling parameters for outline. Default
/// values for PolylineStyle fields are the same as corresponding
/// PolylineMapObject if not specified explicitly.
@bindings_annotations.WeakInterface('mapkit.styling.PolylineStyle')
@bindings_annotations.ContainerData(
    toNative: 'PolylineStyle.getNativePtr',
    toPlatform:
        '(val) => PolylineStyle.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class PolylineStyle implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_PolylineStyle_free.cast());

  /// @nodoc
  PolylineStyle.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  PolylineStyle.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory PolylineStyle.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(PolylineStyle? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _PolylineStyle_check(ptr);
  }

  @internal

  /// @nodoc
  static PolylineStyle? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PolylineStyle.fromNativePtr(ptr);
  }

  /// The stroke width in units (see
  /// mapkit.map.PolylineMapObject.strokeWidth for details). Default:
  /// constantValue: 5
  void setStrokeWidth(
      mapkit_styling_proportion_function.StylingProportionFunction
          strokeWidth) {
    _PolylineStyle_setStrokeWidth(
        ptr,
        mapkit_styling_proportion_function.StylingProportionFunction.toNative(
            strokeWidth));
  }

  /// Width of the outline in units. Default: 0
  void setOutlineWidth(
      mapkit_styling_proportion_function.StylingProportionFunction
          outlineWidth) {
    _PolylineStyle_setOutlineWidth(
        ptr,
        mapkit_styling_proportion_function.StylingProportionFunction.toNative(
            outlineWidth));
  }

  /// Primary color of polyline. Used only if jams disabled or unavailable.
  void setStrokeColor(ui.Color strokeColor) {
    _PolylineStyle_setStrokeColor(ptr, to_native.toNativeColor(strokeColor));
  }

  /// Color of outline in polyline.
  void setOutlineColor(ui.Color outlineColor) {
    _PolylineStyle_setOutlineColor(ptr, to_native.toNativeColor(outlineColor));
  }

  /// Enables the inner outline if true (a dark border along the edge of
  /// the outline).
  void setInnerOutlineEnabled(core.bool innerOutlineEnabled) {
    _PolylineStyle_setInnerOutlineEnabled(ptr, innerOutlineEnabled);
  }

  /// Maximum radius of a turn. Measured in units.
  void setTurnRadius(core.double turnRadius) {
    _PolylineStyle_setTurnRadius(ptr, turnRadius);
  }

  /// Defines step of arc approximation. Smaller values make polyline
  /// smoother. Measured in degrees.
  void setArcApproximationStep(core.double arcApproximationStep) {
    _PolylineStyle_setArcApproximationStep(ptr, arcApproximationStep);
  }

  /// Length of a dash in units. Default: 0 (dashing is turned off). Arrows
  /// are ignored in dashed polylines.
  void setDashLength(core.double dashLength) {
    _PolylineStyle_setDashLength(ptr, dashLength);
  }

  /// Length of the gap between two dashes in units. Default: 0 (dashing is
  /// turned off). Arrows are ignored in dashed polylines.
  void setGapLength(core.double gapLength) {
    _PolylineStyle_setGapLength(ptr, gapLength);
  }

  /// Offset from the start of the polyline to the reference dash in units.
  /// Default: 0.
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
