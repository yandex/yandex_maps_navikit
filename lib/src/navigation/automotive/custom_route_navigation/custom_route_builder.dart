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
part 'custom_route_builder.impl.dart';

final class NavigationCustomRouteOptions {
  final core.bool? allowMoreUturns;

  const NavigationCustomRouteOptions({
    this.allowMoreUturns,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([allowMoreUturns]);

  @core.override
  core.bool operator ==(covariant NavigationCustomRouteOptions other) {
    if (core.identical(this, other)) {
      return true;
    }
    return allowMoreUturns == other.allowMoreUturns;
  }

  @core.override
  core.String toString() {
    return "NavigationCustomRouteOptions(allowMoreUturns: $allowMoreUturns)";
  }
}

/// Interface for building driving route along a user-provided polyline.
abstract class NavigationCustomRouteBuilder implements ffi.Finalizable {
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
  });
}

class NavigationCustomRouteBuilderFactory {
  NavigationCustomRouteBuilderFactory._();

  static NavigationCustomRouteBuilder createCustomRouteBuilder() {
    return _createCustomRouteBuilder();
  }
}
