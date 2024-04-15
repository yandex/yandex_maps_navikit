import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_navikit/src/mapkit/map/map_window.dart'
    as mapkit_map_map_window;
import 'package:yandex_maps_navikit/src/navigation/automotive/navigation.dart'
    as navigation_automotive_navigation;
import 'package:yandex_maps_navikit/src/navigation/guidance_camera/camera.dart'
    as navigation_guidance_camera_camera;

part 'custom_route_navigation.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'CustomRouteNavigation.getNativePtr',
    toPlatform:
        '(val) => CustomRouteNavigation.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class CustomRouteNavigation implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_CustomRouteNavigation_free.cast());

  /// @nodoc
  CustomRouteNavigation.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  CustomRouteNavigation.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(CustomRouteNavigation? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static CustomRouteNavigation? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return CustomRouteNavigation.fromNativePtr(ptr);
  }

  /// This navigation is equal to standart automotive navigation BUT
  /// without alternatives without rerouting without working
  /// "requestRoutes" method traffic information will not be updated while
  /// driving along the route start guidance must be called only through
  /// the special method (startGuidance) of this class
  navigation_automotive_navigation.Navigation get navigation {
    return navigation_automotive_navigation.Navigation.fromNativePtr(
        _CustomRouteNavigation_get_navigation(ptr));
  }

  /// This method allows to create camera which used in standart automotive
  /// navigation
  navigation_guidance_camera_camera.Camera createCamera(
      mapkit_map_map_window.MapWindow mapWindow) {
    return navigation_guidance_camera_camera.Camera.fromNativePtr(
        _CustomRouteNavigation_createCamera(
            ptr, mapkit_map_map_window.MapWindow.getNativePtr(mapWindow)));
  }

  /// Start navigation with specified route.
  void startGuidance(directions_driving_route.DrivingRoute? route) {
    _CustomRouteNavigation_startGuidance(
        ptr, directions_driving_route.DrivingRoute.getNativePtr(route));
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

class CustomRouteNavigationFactory {
  CustomRouteNavigationFactory._();

  /// Method to create custom route navigation
  static CustomRouteNavigation createNavigation() {
    return CustomRouteNavigation.fromNativePtr(
        _CustomRouteNavigationFactory_createNavigation());
  }
}

final ffi.Pointer<ffi.Void> Function()
    _CustomRouteNavigationFactory_createNavigation = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_navigation_automotive_custom_route_navigation_CustomRouteNavigationFactory_createNavigation')
        .asFunction();
