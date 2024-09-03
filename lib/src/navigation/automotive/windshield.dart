import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/async.dart'
    show runWithBlockUi;
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
import 'package:yandex_maps_navikit/src/directions/driving/annotation.dart'
    as directions_driving_annotation;
import 'package:yandex_maps_navikit/src/directions/driving/direction_signs.dart'
    as directions_driving_direction_signs;
import 'package:yandex_maps_navikit/src/directions/driving/lane.dart'
    as directions_driving_lane;
import 'package:yandex_maps_navikit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_navikit/src/mapkit/navigation/route_position.dart'
    as mapkit_navigation_route_position;
import 'package:yandex_maps_navikit/src/navigation/automotive/speed_limit_status.dart'
    as navigation_automotive_speed_limit_status;

part 'windshield.containers.dart';
part 'windshield.impl.dart';

abstract class NavigationUpcomingManoeuvre implements ffi.Finalizable {
  directions_driving_annotation.DrivingAnnotation get annotation;
  mapkit_navigation_route_position.RoutePosition get position;
}

abstract class NavigationUpcomingRoadEvent implements ffi.Finalizable {
  directions_driving_route.DrivingEvent get event;
  navigation_automotive_speed_limit_status.SpeedLimitStatus?
      get speedLimitStatus;

  /// Effective speed limit. Non-empty only for speed control camera
  /// events. If a camera has no speed limit then some standard urban speed
  /// limit will be used.
  ///
  core.double? get effectiveSpeedLimit;
  mapkit_navigation_route_position.RoutePosition get position;
}

abstract class NavigationUpcomingLaneSign implements ffi.Finalizable {
  directions_driving_lane.DrivingLaneSign get laneSign;
  mapkit_navigation_route_position.RoutePosition get position;
}

abstract class NavigationUpcomingDirectionSign implements ffi.Finalizable {
  directions_driving_direction_signs.DrivingDirectionSign get directionSign;
  mapkit_navigation_route_position.RoutePosition get position;
}

abstract class NavigationWindshieldListener {
  void onManoeuvresChanged();

  void onRoadEventsChanged();

  void onLaneSignChanged();

  void onDirectionSignChanged();
}

abstract class NavigationWindshield implements ffi.Finalizable {
  /// Vector with next manoeuvres. Contains several items only if they are
  /// close to each other.
  core.List<NavigationUpcomingManoeuvre> get manoeuvres;

  /// Vector with all road events between current position and the next
  /// manoeuvre. Sorted by distance.
  core.List<NavigationUpcomingRoadEvent> get roadEvents;

  /// Vector with all lane signs between current position and the last
  /// manoeuvre from the manoeuvres vector. Sorted by distance.
  core.List<NavigationUpcomingLaneSign> get laneSigns;

  /// Vector with all direction signs between current position and the last
  /// manoeuvre from the manoeuvres vector. Sorted by distance.
  core.List<NavigationUpcomingDirectionSign> get directionSigns;

  /// The class does not retain the object in the 'windshieldListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addListener(NavigationWindshieldListener windshieldListener);

  void removeListener(NavigationWindshieldListener windshieldListener);

  /// Usable only in [runWithBlockUi] or listener handlers.
  core.bool isValid();
}
