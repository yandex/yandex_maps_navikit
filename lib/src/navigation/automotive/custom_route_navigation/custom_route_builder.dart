import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_navikit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/directions/driving/session.dart'
    as directions_driving_session;
import 'package:yandex_maps_navikit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_navikit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;

part 'custom_route_builder.containers.dart';

/// @nodoc
final class NavigationCustomRouteOptionsNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> allowMoreUturns;
}

final NavigationCustomRouteOptionsNative Function(
    ffi
        .Pointer<ffi.Void>) _NavigationCustomRouteOptionsNativeInit = lib
    .library
    .lookup<
            ffi.NativeFunction<
                NavigationCustomRouteOptionsNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_custom_route_navigation_NavigationCustomRouteOptions_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'NavigationCustomRouteOptions.toPointer',
    toPlatform:
        '(val) => NavigationCustomRouteOptions.fromPointer(val, needFree: false)')
class NavigationCustomRouteOptions {
  final core.bool? allowMoreUturns;

  const NavigationCustomRouteOptions({
    this.allowMoreUturns,
  });

  /// @nodoc
  @internal
  NavigationCustomRouteOptions.fromNative(
      NavigationCustomRouteOptionsNative native)
      : this(
            allowMoreUturns:
                to_platform.toPlatformFromPointerBool(native.allowMoreUturns));

  /// @nodoc
  @internal
  static NavigationCustomRouteOptionsNative toNative(
      NavigationCustomRouteOptions c) {
    return _NavigationCustomRouteOptionsNativeInit(
        to_native.toNativePtrBool(c.allowMoreUturns));
  }

  /// @nodoc
  @internal
  static NavigationCustomRouteOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = NavigationCustomRouteOptions.fromNative(
        ptr.cast<NavigationCustomRouteOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(NavigationCustomRouteOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<NavigationCustomRouteOptionsNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}

/// Interface for building driving route along a user-provided polyline.
@bindings_annotations.ContainerData(
    toNative: 'NavigationCustomRouteBuilder.getNativePtr',
    toPlatform:
        '(val) => NavigationCustomRouteBuilder.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class NavigationCustomRouteBuilder implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_NavigationCustomRouteBuilder_free.cast());

  /// @nodoc
  NavigationCustomRouteBuilder.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationCustomRouteBuilder.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationCustomRouteBuilder? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static NavigationCustomRouteBuilder? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationCustomRouteBuilder.fromNativePtr(ptr);
  }

  /// Builds a route.
  ///
  /// [polyline] Route polyline.
  /// [initialPoint] Initial point.
  /// [initialAzimuth] Initial azimuth.
  /// [customRouteOptions] Custom route options.
  /// [routeListener] Route listener object.
  directions_driving_session.DrivingSession requestRoute(
    mapkit_geometry_geometry.Polyline polyline,
    mapkit_geometry_point.Point initialPoint,
    NavigationCustomRouteOptions customRouteOptions,
    directions_driving_session.DrivingSessionRouteListener routeListener, {
    core.double? initialAzimuth,
  }) {
    return directions_driving_session.DrivingSession.fromNativePtr(
        _CustomRouteBuilder_requestRoute(
      ptr,
      mapkit_geometry_geometry.Polyline.getNativePtr(polyline),
      mapkit_geometry_point.Point.toNative(initialPoint),
      to_native.toNativePtrDouble(initialAzimuth),
      NavigationCustomRouteOptions.toNative(customRouteOptions),
      directions_driving_session.DrivingSessionRouteListener.getNativePtr(
          routeListener),
    ));
  }
}

final _NavigationCustomRouteBuilder_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_custom_route_navigation_NavigationCustomRouteBuilder_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    mapkit_geometry_point.PointNative,
    ffi.Pointer<ffi.Void>,
    NavigationCustomRouteOptionsNative,
    ffi
        .Pointer<ffi.Void>) _CustomRouteBuilder_requestRoute = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    mapkit_geometry_point.PointNative,
                    ffi.Pointer<ffi.Void>,
                    NavigationCustomRouteOptionsNative,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_custom_route_navigation_NavigationCustomRouteBuilder_requestRoute')
    .asFunction();

class NavigationCustomRouteBuilderFactory {
  NavigationCustomRouteBuilderFactory._();

  static NavigationCustomRouteBuilder createCustomRouteBuilder() {
    return NavigationCustomRouteBuilder.fromNativePtr(
        _CustomRouteBuilderFactory_createCustomRouteBuilder());
  }
}

final ffi.Pointer<ffi.Void> Function()
    _CustomRouteBuilderFactory_createCustomRouteBuilder = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_navigation_automotive_custom_route_navigation_NavigationCustomRouteBuilderFactory_createCustomRouteBuilder')
        .asFunction();
