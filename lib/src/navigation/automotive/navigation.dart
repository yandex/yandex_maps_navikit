import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:typed_data' as typed_data;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_navikit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_navikit/src/directions/driving/driving_router.dart'
    as directions_driving_driving_router;
import 'package:yandex_maps_navikit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_navikit/src/directions/driving/vehicle_options.dart'
    as directions_driving_vehicle_options;
import 'package:yandex_maps_navikit/src/mapkit/annotations/annotation_lang.dart'
    as mapkit_annotations_annotation_lang;
import 'package:yandex_maps_navikit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_navikit/src/mapkit/request_point.dart'
    as mapkit_request_point;
import 'package:yandex_maps_navikit/src/navigation/automotive/guidance.dart'
    as navigation_automotive_guidance;
import 'package:yandex_maps_navikit/src/navigation/automotive/route_options.dart'
    as navigation_automotive_route_options;
import 'package:yandex_maps_navikit/src/runtime/error.dart' as runtime_error;

part 'navigation.containers.dart';
part 'navigation.impl.dart';

abstract class NavigationListener {
  void onRoutesRequested(core.List<mapkit_request_point.RequestPoint> points);

  /// Calls when a user requested alternatives for the current route. After
  /// this callback Navigation will have the current route and fastest
  /// alternative route (if available) in Navigation.routes()
  void onAlternativesRequested(
      directions_driving_route.DrivingRoute currentRoute);

  void onUriResolvingRequested(core.String uri);

  /// Calls when routes, alternatives, or URI request succeeds After
  /// alternatives request Navigation.routes() will have current route and
  /// fastest alternative for the request moment along with received
  /// alternatives.
  void onRoutesBuilt();

  /// Will be called when an error occurs during routes, alternatives or
  /// uri request
  void onRoutesRequestError(runtime_error.Error error);

  void onResetRoutes();
}

abstract class Navigation implements ffi.Finalizable {
  /// Changing this option may trigger reroute.
  directions_driving_vehicle_options.DrivingVehicleOptions get vehicleOptions;
  set vehicleOptions(
      directions_driving_vehicle_options.DrivingVehicleOptions val);

  /// The 'avoidTolls/avoidUnpaved/avoidPoorConditions' option instructs
  /// the router to return routes that avoid tolls/unpaved/roads in poor
  /// condition when possible. Changing these options may trigger reroute.
  /// All disabled by default.
  core.bool get avoidTolls;
  set avoidTolls(core.bool val);

  core.bool get avoidUnpaved;
  set avoidUnpaved(core.bool val);

  core.bool get avoidPoorConditions;
  set avoidPoorConditions(core.bool val);

  /// avoidedZones instructs the router to return routes that avoid
  /// provided polygons. If there are too many polygons or too complex
  /// polygon geometry, routes building may become impossible. In this case
  /// the error
  /// [directions_driving_driving_router.DrivingTooComplexAvoidedZonesError]
  /// will be returned. Changing this option may trigger reroute.
  core.List<mapkit_geometry_geometry.LinearRing> get avoidedZones;
  set avoidedZones(core.List<mapkit_geometry_geometry.LinearRing> val);

  /// Set the annotation language. Changing this option may trigger
  /// reroute.
  mapkit_annotations_annotation_lang.AnnotationLanguage get annotationLanguage;
  set annotationLanguage(
      mapkit_annotations_annotation_lang.AnnotationLanguage val);

  /// Resulting routes for the previous request. For requestAlternatives()
  /// it will contain the current route and fastest alternative route (if
  /// available) along with the received alternatives. Current route always
  /// will be the first one and fastest alternative will be the second.
  core.List<directions_driving_route.DrivingRoute> get routes;
  navigation_automotive_guidance.Guidance get guidance;

  /// Request routes for further guidance. If there was a pending routing
  /// request, it will be canceled.
  void requestRoutes(
    navigation_automotive_route_options.AutomotiveRouteOptions routeOptions, {
    required core.List<mapkit_request_point.RequestPoint> points,
  });

  /// Request global alternatives for the current route. If there was a
  /// pending routing request, it will be canceled.
  void requestAlternatives();

  /// Resolve saved driving route URI for further guidance. If there was a
  /// pending routing request, it will be canceled.
  void resolveUri(core.String uri);

  /// Cancel active routing request.
  void cancelRequest();

  /// Cancel active routing request and clear routes vector.
  void resetRoutes();

  /// The class does not retain the object in the 'navigationListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addListener(NavigationListener navigationListener);

  void removeListener(NavigationListener navigationListener);

  /// Start guidance with given route. This method will reset active
  /// current route if any. It only accepts either routes obtained from
  /// this `routes` field or `null`, which means freedrive session started.
  void startGuidance(directions_driving_route.DrivingRoute? route);

  /// Stops current guidance session. Call this method only if guidance has
  /// completely ended. For example, if you need to start another type of
  /// guidance (pedestrian for example) stop this first and than start
  /// another one. In case of route finished but you still on the road you
  /// must use `startGuidance(null)` instead.
  void stopGuidance();

  /// Stop tracking user position, later it could be resumed without losing
  /// current route. Useful when user don't want guidance in background.
  void suspend();

  /// Resumes suspended guidance. Guide will continue to guide the previous
  /// route or rebuild it. Useful when user don't want guidance in
  /// background.
  void resume();
}

class NavigationFactory {
  NavigationFactory._();

  /// Creates navigation engine with given options. Each call returns new
  /// independent instance of Navigation. Navigation will be in the
  /// suspended mode.
  static Navigation createNavigation(
      directions_driving_driving_router.DrivingRouterType type) {
    return _createNavigation(
      type,
    );
  }
}

class NavigationSerialization {
  NavigationSerialization._();

  /// Serializes a given instance of Navigation.
  static typed_data.ByteBuffer serialize(Navigation navigation) {
    return _serialize(
      navigation,
    );
  }

  /// Deserializes a given instance of Navigation. Navigation will be in
  /// the suspended mode. Returns null if deserialization failed.
  static Navigation? deserialize(typed_data.ByteBuffer serializedNavigation) {
    return _deserialize(
      serializedNavigation,
    );
  }
}
