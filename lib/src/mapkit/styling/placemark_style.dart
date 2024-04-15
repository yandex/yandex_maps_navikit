import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:math' as math;
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
import 'package:yandex_maps_navikit/src/bindings/image/animated_image_provider.dart'
    as animated_image_provider;
import 'package:yandex_maps_navikit/src/bindings/image/image_provider.dart'
    as image_provider;

part 'placemark_style.containers.dart';

@bindings_annotations.WeakInterface('mapkit.styling.PlacemarkStyle')
@bindings_annotations.ContainerData(
    toNative: 'PlacemarkStyle.getNativePtr',
    toPlatform:
        '(val) => PlacemarkStyle.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class PlacemarkStyle implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_PlacemarkStyle_free.cast());

  /// @nodoc
  PlacemarkStyle.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  PlacemarkStyle.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory PlacemarkStyle.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(PlacemarkStyle? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _PlacemarkStyle_check(ptr);
  }

  @internal

  /// @nodoc
  static PlacemarkStyle? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PlacemarkStyle.fromNativePtr(ptr);
  }

  /// Set the placemark to be an 3D arrow. Usable only for user position
  /// placemark.
  void setArrowModel() {
    _PlacemarkStyle_setArrowModel(ptr);
  }

  void setImage(image_provider.ImageProvider image) {
    _PlacemarkStyle_setImage(ptr, to_native.toNativeImageProvider(image));
  }

  void setAnimatedImage(
      animated_image_provider.AnimatedImageProvider iconImage) {
    _PlacemarkStyle_setAnimatedImage(
        ptr, to_native.toNativeAnimatedImageProvider(iconImage));
  }

  /// Icon anchor, (0, 0) is top left and (1.0, 1.0) is bottom right.
  void setIconAnchor(math.Point<core.double> iconAnchor) {
    _PlacemarkStyle_setIconAnchor(ptr, to_native.toNativePoint(iconAnchor));
  }

  /// Piecewise linear scale function. See Placemark's scale function.
  void setScaleFunction(core.List<math.Point<core.double>> points) {
    _PlacemarkStyle_setScaleFunction(
        ptr, to_native.toNativeVectorPoint(points));
  }

  /// Minimal zoom for placemark to be visible.
  void setMinZoomVisible(core.double? minZoom) {
    _PlacemarkStyle_setMinZoomVisible(ptr, to_native.toNativePtrFloat(minZoom));
  }
}

final _PlacemarkStyle_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_PlacemarkStyle_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _PlacemarkStyle_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_PlacemarkStyle_check')
    .asFunction(isLeaf: true);

final void Function(ffi.Pointer<ffi.Void>) _PlacemarkStyle_setArrowModel = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_PlacemarkStyle_setArrowModel')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _PlacemarkStyle_setImage = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_styling_PlacemarkStyle_setImage')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _PlacemarkStyle_setAnimatedImage = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_styling_PlacemarkStyle_setAnimatedImage')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativePoint)
    _PlacemarkStyle_setIconAnchor = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, native_types.NativePoint)>>(
            'yandex_flutter_mapkit_styling_PlacemarkStyle_setIconAnchor')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _PlacemarkStyle_setScaleFunction = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_styling_PlacemarkStyle_setScaleFunction')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _PlacemarkStyle_setMinZoomVisible = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_styling_PlacemarkStyle_setMinZoomVisible')
        .asFunction();
