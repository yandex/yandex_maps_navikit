part of 'custom_route_navigation.dart';

@bindings_annotations.ContainerData(
    toNative: 'CustomRouteNavigationImpl.getNativePtr',
    toPlatform:
        '(val) => CustomRouteNavigationImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'CustomRouteNavigation')
class CustomRouteNavigationImpl
    implements CustomRouteNavigation, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_CustomRouteNavigation_free.cast());

  /// @nodoc
  CustomRouteNavigationImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  CustomRouteNavigationImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(CustomRouteNavigation? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as CustomRouteNavigationImpl).ptr;
  }

  @internal

  /// @nodoc
  static CustomRouteNavigation? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return CustomRouteNavigationImpl.fromNativePtr(ptr);
  }

  @core.override
  navigation_automotive_navigation.Navigation get navigation {
    final result = _CustomRouteNavigation_get_navigation(ptr);
    return navigation_automotive_navigation.NavigationImpl.fromNativePtr(
        result);
  }

  navigation_guidance_camera_camera.Camera createCamera(
      mapkit_map_map_window.MapWindow mapWindow) {
    final result = _CustomRouteNavigation_createCamera(
        ptr, mapkit_map_map_window.MapWindowImpl.getNativePtr(mapWindow));
    return navigation_guidance_camera_camera.CameraImpl.fromNativePtr(result);
  }

  void startGuidance(directions_driving_route.DrivingRoute? route) {
    _CustomRouteNavigation_startGuidance(
        ptr, directions_driving_route.DrivingRouteImpl.getNativePtr(route));
  }
}

final _CustomRouteNavigation_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_custom_route_navigation_CustomRouteNavigation_free');

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _CustomRouteNavigation_get_navigation = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_custom_route_navigation_CustomRouteNavigation_get_navigation')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _CustomRouteNavigation_createCamera = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_custom_route_navigation_CustomRouteNavigation_createCamera')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _CustomRouteNavigation_startGuidance = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_custom_route_navigation_CustomRouteNavigation_startGuidance')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _CustomRouteNavigation_set = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_custom_route_navigation_CustomRouteNavigation_set_')
    .asFunction(isLeaf: true);

CustomRouteNavigation _createNavigation() {
  final result = _CustomRouteNavigationFactory_createNavigation();
  return CustomRouteNavigationImpl.fromNativePtr(result);
}

final ffi.Pointer<ffi.Void> Function()
    _CustomRouteNavigationFactory_createNavigation = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_navigation_automotive_custom_route_navigation_CustomRouteNavigationFactory_createNavigation')
        .asFunction();
