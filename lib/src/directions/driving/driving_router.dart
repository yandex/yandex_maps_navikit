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
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/directions/driving/avoidance_flags.dart'
    as directions_driving_avoidance_flags;
import 'package:yandex_maps_navikit/src/directions/driving/session.dart'
    as directions_driving_session;
import 'package:yandex_maps_navikit/src/directions/driving/vehicle_options.dart'
    as directions_driving_vehicle_options;
import 'package:yandex_maps_navikit/src/mapkit/annotations/annotation_lang.dart'
    as mapkit_annotations_annotation_lang;
import 'package:yandex_maps_navikit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_navikit/src/mapkit/request_point.dart'
    as mapkit_request_point;
import 'package:yandex_maps_navikit/src/runtime/error.dart' as runtime_error;

part 'driving_router.containers.dart';
part 'driving_router.impl.dart';

abstract class DrivingTooComplexAvoidedZonesError
    implements runtime_error.Error, ffi.Finalizable {
  core.bool isValid();
}

/// Driving options.

final class DrivingOptions {
  /// Starting location azimuth.
  ///
  final core.double? initialAzimuth;

  /// The number of alternatives.
  ///
  final core.int? routesCount;
  final core.DateTime? departureTime;

  /// A method to set the annotation language. lang The annotation
  /// language.
  ///
  final mapkit_annotations_annotation_lang.AnnotationLanguage?
      annotationLanguage;

  /// The 'avoidanceFlags' instruct the router to return routes that avoid
  /// roads with the specified properties when possible.
  ///
  final directions_driving_avoidance_flags.DrivingAvoidanceFlags?
      avoidanceFlags;

  const DrivingOptions({
    this.initialAzimuth,
    this.routesCount,
    this.departureTime,
    this.annotationLanguage,
    this.avoidanceFlags,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        initialAzimuth,
        routesCount,
        departureTime,
        annotationLanguage,
        avoidanceFlags
      ]);

  @core.override
  core.bool operator ==(covariant DrivingOptions other) {
    if (core.identical(this, other)) {
      return true;
    }
    return initialAzimuth == other.initialAzimuth &&
        routesCount == other.routesCount &&
        departureTime == other.departureTime &&
        annotationLanguage == other.annotationLanguage &&
        avoidanceFlags == other.avoidanceFlags;
  }

  @core.override
  core.String toString() {
    return "DrivingOptions(initialAzimuth: $initialAzimuth, routesCount: $routesCount, departureTime: $departureTime, annotationLanguage: $annotationLanguage, avoidanceFlags: $avoidanceFlags)";
  }
}

/// Driving router type.
enum DrivingRouterType {
  /// Online driving router. Always tries to use online router even if
  /// network is not available.
  Online,

  /// Offline driving router. Always tries to use offline router even if
  /// network is available.
  Offline,

  /// Combined driving router. Decision to use online or offline router is
  /// based on internal timeout. If server manages to respond within given
  /// time, then online router result is returned. Otherwise uses offline
  /// router.  Will combine online and offline router result in single
  /// session (hence the name). Timeout logic is applied on each resubmit
  /// until first response from offline router is returned to the listener.
  /// After that timeout is reduced to zero for all following resubmits.
  Combined,
  ;
}

/// Interface for the driving router.
abstract class DrivingRouter implements ffi.Finalizable {
  /// Builds a route.
  ///
  /// [points] Route points.
  /// [drivingOptions] Driving options.
  /// [vehicleOptions] Vehicle options.
  /// [routeListener] Route listener object.
  directions_driving_session.DrivingSession requestRoutes(
    DrivingOptions drivingOptions,
    directions_driving_vehicle_options.DrivingVehicleOptions vehicleOptions,
    directions_driving_session.DrivingSessionRouteListener routeListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
  });

  /// Builds a route based on a custom route geometry.
  ///
  /// [polyline] Custom route geometry.
  /// [drivingOptions] Driving options.
  /// [vehicleOptions] Vehicle options.
  /// [routeListener] Route listener object.
  directions_driving_session.DrivingSession matchRoute(
      mapkit_geometry_geometry.Polyline polyline,
      DrivingOptions drivingOptions,
      directions_driving_vehicle_options.DrivingVehicleOptions vehicleOptions,
      directions_driving_session.DrivingSessionRouteListener routeListener);

  /// Creates a route summary.
  ///
  /// [points] Route points.
  /// [drivingOptions] Driving options.
  /// [vehicleOptions] Vehicle options.
  /// [summaryListener] Summary listener object.
  directions_driving_session.DrivingSummarySession requestRoutesSummary(
    DrivingOptions drivingOptions,
    directions_driving_vehicle_options.DrivingVehicleOptions vehicleOptions,
    directions_driving_session.DrivingSummarySessionSummaryListener
        summaryListener, {
    required core.List<mapkit_request_point.RequestPoint> points,
  });
}
