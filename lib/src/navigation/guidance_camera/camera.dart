import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_navikit/src/mapkit/animation.dart'
    as mapkit_animation;
import 'package:yandex_maps_navikit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_navikit/src/mapkit/screen_types.dart'
    as mapkit_screen_types;

part 'camera.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'CameraMode.toPointer',
    toPlatform: '(val) => CameraMode.fromPointer(val, needFree: false)')
enum CameraMode {
  /// Camera follow position.
  Following,

  /// Free camera mode.
  Free,

  /// Camera showing all routes.
  Overview,
  ;

  /// @nodoc
  @internal
  static CameraMode fromInt(core.int val) {
    return CameraMode.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(CameraMode e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static CameraMode? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(CameraMode? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
class _CameraListenerWrapper implements ffi.Finalizable {
  _CameraListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer = ffi.NativeFinalizer(_CameraListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

abstract class CameraListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<CameraListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<CameraListener, _CameraListenerWrapper?>();

  void onCameraModeChanged();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(CameraListener obj) {
    final ptr = _CameraListener_new(
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _CameraListener_onCameraModeChanged));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _CameraListenerWrapper(ptr);
    _CameraListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(CameraListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _CameraListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_guidance_camera_CameraListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)
    _CameraListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<
                            ffi
                            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_navigation_guidance_camera_CameraListener_new')
        .asFunction(isLeaf: true);

final _CameraListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_guidance_camera_CameraListener_free');
void _CameraListener_onCameraModeChanged(ffi.Pointer<ffi.Void> _ptr) {
  final listener = CameraListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onCameraModeChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

/// Camera tracks location, user input and provide new CameraPosition for
/// map.
@bindings_annotations.WeakInterface('navigation.guidance_camera.Camera')
@bindings_annotations.ContainerData(
    toNative: 'Camera.getNativePtr',
    toPlatform:
        '(val) => Camera.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class Camera implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Camera_free.cast());

  /// @nodoc
  Camera.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  Camera.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory Camera.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Camera? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _Camera_check(ptr);
  }

  @internal

  /// @nodoc
  static Camera? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return Camera.fromNativePtr(ptr);
  }

  /// If enabled, camera will automatically switch between modes:
  /// <ul><li>Camera will become into 'Following' mode if current route in
  /// navigation selected or current speed is greater than: 10 km/h for
  /// auto and 5 km/h for pedestrian navigations.</li> <li>Camera will
  /// become into 'Following' mode from 'Overview' mode on guidance
  /// start.</li> <li>Camera will become into 'Overview' when routes
  /// requested, but current route does not selected yet.</li> <li>Camera
  /// will become into 'Free' mode from 'Following' mode on any external
  /// move (gesture / call `map.move`)</li> <li>Camera will become into
  /// 'Following' mode from 'Free' mode if requirements from (1) satisfied
  /// and there are no any camera moving activity for 10 seconds</li></ul>
  ///
  /// Enabled by default.
  core.bool get switchModesAutomatically {
    return _Camera_get_switchModesAutomatically(ptr);
  }

  set switchModesAutomatically(core.bool val) {
    return _Camera_set_switchModesAutomatically(ptr, val);
  }

  /// The class does not retain the object in the 'cameraListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addListener(CameraListener cameraListener) {
    _Camera_addListener(ptr, CameraListener.getNativePtr(cameraListener));
  }

  void removeListener(CameraListener cameraListener) {
    _Camera_removeListener(ptr, CameraListener.getNativePtr(cameraListener));
  }

  /// Set autozoom in 'Following' camera mode. `animation` parameter
  /// ignored if camera currently not in the 'Following' mode. Enabled by
  /// default.
  void setAutoZoom({
    required core.bool enabled,
    mapkit_animation.Animation? animation,
  }) {
    _Camera_setAutoZoom(
        ptr, enabled, mapkit_animation.Animation.toPointer(animation));
  }

  /// Set autorotation in 'Following' camera mode. `animation` parameter
  /// ignored if camera currently not in the 'Following' mode. Enabled by
  /// default.
  void setAutoRotation({
    required core.bool enabled,
    mapkit_animation.Animation? animation,
  }) {
    _Camera_setAutoRotation(
        ptr, enabled, mapkit_animation.Animation.toPointer(animation));
  }

  /// Add `offset` value to zoom in following mode. 0.0 by default.
  void setFollowingModeZoomOffset({
    required core.double offset,
    mapkit_animation.Animation? animation,
  }) {
    _Camera_setFollowingModeZoomOffset(
        ptr, offset, mapkit_animation.Animation.toPointer(animation));
  }

  /// Defines area, where all routes should be shown in 'Overview' mode. If
  /// `overviewRect` is null, mapWindow.focusRect used.
  void setOverviewRect({
    mapkit_screen_types.ScreenRect? rect,
    mapkit_animation.Animation? animation,
  }) {
    _Camera_setOverviewRect(ptr, mapkit_screen_types.ScreenRect.toPointer(rect),
        mapkit_animation.Animation.toPointer(animation));
  }

  /// Given points will be visible when camera switches to 'Overview' mode.
  /// It is useful when you draw some extra info on the map out of routes.
  void setExtraOverviewPoints(core.List<mapkit_geometry_point.Point>? points) {
    _Camera_setExtraOverviewPoints(ptr,
        mapkit_geometry_point.PointContainerExtension.toNativeVector(points));
  }

  CameraMode cameraMode() {
    return CameraMode.fromInt(_Camera_cameraMode(ptr));
  }

  void setCameraMode(
    CameraMode mode, {
    mapkit_animation.Animation? animation,
  }) {
    _Camera_setCameraMode(ptr, CameraMode.toInt(mode),
        mapkit_animation.Animation.toPointer(animation));
  }
}

final _Camera_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_guidance_camera_Camera_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _Camera_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_guidance_camera_Camera_check')
    .asFunction(isLeaf: true);

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _Camera_get_switchModesAutomatically = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_guidance_camera_Camera_get_switchModesAutomatically')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _Camera_set_switchModesAutomatically = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_guidance_camera_Camera_set_switchModesAutomatically')
    .asFunction();

final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Camera_addListener = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_guidance_camera_Camera_addListener')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Camera_removeListener = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_guidance_camera_Camera_removeListener')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.bool, ffi.Pointer<ffi.Void>)
    _Camera_setAutoZoom = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_guidance_camera_Camera_setAutoZoom')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.bool, ffi.Pointer<ffi.Void>)
    _Camera_setAutoRotation = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_guidance_camera_Camera_setAutoRotation')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core.double,
    ffi
        .Pointer<ffi.Void>) _Camera_setFollowingModeZoomOffset = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Float, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_guidance_camera_Camera_setFollowingModeZoomOffset')
    .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Camera_setOverviewRect = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_guidance_camera_Camera_setOverviewRect')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Camera_setExtraOverviewPoints = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_guidance_camera_Camera_setExtraOverviewPoints')
    .asFunction();
final core.int Function(ffi.Pointer<ffi.Void>) _Camera_cameraMode = lib.library
    .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_guidance_camera_Camera_cameraMode')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int, ffi.Pointer<ffi.Void>)
    _Camera_setCameraMode = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_guidance_camera_Camera_setCameraMode')
        .asFunction();
