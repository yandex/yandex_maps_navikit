import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_navikit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_navikit/src/mapkit/localized_value.dart'
    as mapkit_localized_value;
import 'package:yandex_maps_navikit/src/mapkit/location/location.dart'
    as mapkit_location_location;
import 'package:yandex_maps_navikit/src/navigation/automotive/alternative.dart'
    as navigation_automotive_alternative;
import 'package:yandex_maps_navikit/src/navigation/automotive/annotator.dart'
    as navigation_automotive_annotator;
import 'package:yandex_maps_navikit/src/navigation/automotive/location_class.dart'
    as navigation_automotive_location_class;
import 'package:yandex_maps_navikit/src/navigation/automotive/route_change_reason.dart'
    as navigation_automotive_route_change_reason;
import 'package:yandex_maps_navikit/src/navigation/automotive/route_status.dart'
    as navigation_automotive_route_status;
import 'package:yandex_maps_navikit/src/navigation/automotive/speed_limit_status.dart'
    as navigation_automotive_speed_limit_status;
import 'package:yandex_maps_navikit/src/navigation/automotive/speed_limits_policy.dart'
    as navigation_automotive_speed_limits_policy;
import 'package:yandex_maps_navikit/src/navigation/automotive/windshield.dart'
    as navigation_automotive_windshield;

part 'guidance.containers.dart';
part 'guidance.impl.dart';

abstract class GuidanceListener {
  void onLocationChanged();

  void onCurrentRouteChanged(
      navigation_automotive_route_change_reason.RouteChangeReason reason);

  void onRouteLost();

  void onReturnedToRoute();

  void onRouteFinished();

  void onWayPointReached();

  void onStandingStatusChanged();

  void onRoadNameChanged();

  void onSpeedLimitUpdated();

  void onSpeedLimitStatusUpdated();

  void onAlternativesChanged();

  void onFastestAlternativeChanged();
}

abstract class Guidance implements ffi.Finalizable {
  /// Enables/Disables alternatives suggestion while guiding. Enabled by
  /// default.
  core.bool get enableAlternatives;
  set enableAlternatives(core.bool val);

  navigation_automotive_windshield.NavigationWindshield get windshield;
  navigation_automotive_annotator.Annotator get annotator;
  directions_driving_route.DrivingRoute? get currentRoute;

  /// Vector with all alternatives ahead. Sorted by distance.
  core.List<navigation_automotive_alternative.NavigationAlternative>
      get alternatives;
  navigation_automotive_alternative.NavigationAlternative?
      get fastestAlternative;
  mapkit_location_location.Location? get location;
  navigation_automotive_location_class.LocationClass? get locationClass;
  core.String? get roadName;
  navigation_automotive_route_status.RouteStatus get routeStatus;

  /// In case region is not yet available, SpeedingPolicy::region is empty
  /// and default speeding config is used.
  navigation_automotive_speed_limits_policy.SpeedLimitsPolicy
      get speedLimitsPolicy;
  core.double get speedLimitTolerance;
  set speedLimitTolerance(core.double val);

  /// Speed limit of the current road.
  ///
  mapkit_localized_value.LocalizedValue? get speedLimit;
  navigation_automotive_speed_limit_status.SpeedLimitStatus
      get speedLimitStatus;

  /// Start guidance with given alternative. It only accepts routes
  /// obtained from this Guidance.routes field.
  void switchToRoute(directions_driving_route.DrivingRoute route);

  /// The class does not retain the object in the 'guidanceListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addListener(GuidanceListener guidanceListener);

  void removeListener(GuidanceListener guidanceListener);
}
