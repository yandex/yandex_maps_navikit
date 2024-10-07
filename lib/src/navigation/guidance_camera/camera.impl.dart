part of 'camera.dart';

@bindings_annotations.ContainerData(
    toNative: 'CameraModeImpl.toPointer',
    toPlatform: '(val) => CameraModeImpl.fromPointer(val, needFree: false)',
    platformType: 'CameraMode')
extension CameraModeImpl on CameraMode {
  static core.int toInt(CameraMode e) {
    return e.index;
  }

  static CameraMode fromInt(core.int val) {
    return CameraMode.values[val];
  }

  static CameraMode? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(CameraMode? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

final class _CameraListenerWrapper implements ffi.Finalizable {
  _CameraListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer = ffi.NativeFinalizer(_CameraListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension CameraListenerImpl on CameraListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<CameraListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<CameraListener, _CameraListenerWrapper?>();

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
  final listener = CameraListenerImpl._pointerToListener[_ptr]?.target;
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

@bindings_annotations.WeakInterface('navigation.guidance_camera.Camera')
@bindings_annotations.ContainerData(
    toNative: 'CameraImpl.getNativePtr',
    toPlatform:
        '(val) => CameraImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'Camera')
class CameraImpl implements Camera, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Camera_free.cast());

  /// @nodoc
  CameraImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  CameraImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory CameraImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Camera? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as CameraImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _Camera_check(ptr);
  }

  @internal

  /// @nodoc
  static Camera? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return CameraImpl.fromNativePtr(ptr);
  }

  @core.override
  core.bool get switchModesAutomatically {
    final result = _Camera_get_switchModesAutomatically(ptr);
    exception.checkCallResult();
    return result;
  }

  @core.override
  set switchModesAutomatically(core.bool val) {
    _Camera_set_switchModesAutomatically(ptr, val);
    exception.checkCallResult();
  }

  void addListener(CameraListener cameraListener) {
    _Camera_addListener(ptr, CameraListenerImpl.getNativePtr(cameraListener));
    exception.checkCallResult();
  }

  void removeListener(CameraListener cameraListener) {
    _Camera_removeListener(
        ptr, CameraListenerImpl.getNativePtr(cameraListener));
    exception.checkCallResult();
  }

  void setAutoZoom({
    required core.bool enabled,
    mapkit_animation.Animation? animation,
  }) {
    _Camera_setAutoZoom(
        ptr, enabled, mapkit_animation.AnimationImpl.toPointer(animation));
    exception.checkCallResult();
  }

  void setAutoRotation({
    required core.bool enabled,
    mapkit_animation.Animation? animation,
  }) {
    _Camera_setAutoRotation(
        ptr, enabled, mapkit_animation.AnimationImpl.toPointer(animation));
    exception.checkCallResult();
  }

  void setFollowingModeZoomOffset({
    required core.double offset,
    mapkit_animation.Animation? animation,
  }) {
    _Camera_setFollowingModeZoomOffset(
        ptr, offset, mapkit_animation.AnimationImpl.toPointer(animation));
    exception.checkCallResult();
  }

  void setOverviewRect({
    mapkit_screen_types.ScreenRect? rect,
    mapkit_animation.Animation? animation,
  }) {
    _Camera_setOverviewRect(
        ptr,
        mapkit_screen_types.ScreenRectImpl.toPointer(rect),
        mapkit_animation.AnimationImpl.toPointer(animation));
    exception.checkCallResult();
  }

  void setExtraOverviewPoints(core.List<mapkit_geometry_point.Point>? points) {
    _Camera_setExtraOverviewPoints(ptr,
        mapkit_geometry_point.PointContainerExtension.toNativeVector(points));
    exception.checkCallResult();
  }

  CameraMode cameraMode() {
    final result = _Camera_cameraMode(ptr);
    exception.checkCallResult();
    return CameraModeImpl.fromInt(result);
  }

  void setCameraMode(
    CameraMode mode, {
    mapkit_animation.Animation? animation,
  }) {
    _Camera_setCameraMode(ptr, CameraModeImpl.toInt(mode),
        mapkit_animation.AnimationImpl.toPointer(animation));
    exception.checkCallResult();
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
final void Function(ffi.Pointer<ffi.Void>, core.int) _Camera_set = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_navigation_guidance_camera_Camera_set_')
    .asFunction(isLeaf: true);
