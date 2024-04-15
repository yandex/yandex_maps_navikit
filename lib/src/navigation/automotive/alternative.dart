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
import 'package:yandex_maps_navikit/src/mapkit/navigation/route_position.dart'
    as mapkit_navigation_route_position;

part 'alternative.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'NavigationAlternative.getNativePtr',
    toPlatform:
        '(val) => NavigationAlternative.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class NavigationAlternative implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_NavigationAlternative_free.cast());

  /// @nodoc
  NavigationAlternative.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationAlternative.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationAlternative? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static NavigationAlternative? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationAlternative.fromNativePtr(ptr);
  }

  directions_driving_route.DrivingRoute get alternative {
    return directions_driving_route.DrivingRoute.fromNativePtr(
        _Alternative_get_alternative(ptr));
  }

  mapkit_navigation_route_position.RoutePosition get forkPositionOnAlternative {
    return mapkit_navigation_route_position.RoutePosition.fromNativePtr(
        _Alternative_get_forkPositionOnAlternative(ptr));
  }

  mapkit_navigation_route_position.RoutePosition
      get forkPositionOnCurrentRoute {
    return mapkit_navigation_route_position.RoutePosition.fromNativePtr(
        _Alternative_get_forkPositionOnCurrentRoute(ptr));
  }
}

final _NavigationAlternative_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationAlternative_free');

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Alternative_get_alternative = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationAlternative_get_alternative')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Alternative_get_forkPositionOnAlternative = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationAlternative_get_forkPositionOnAlternative')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Alternative_get_forkPositionOnCurrentRoute = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationAlternative_get_forkPositionOnCurrentRoute')
    .asFunction();
