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
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/directions/driving/flags.dart'
    as directions_driving_flags;
import 'package:yandex_maps_navikit/src/mapkit/navigation/jam_style.dart'
    as mapkit_navigation_jam_style;
import 'package:yandex_maps_navikit/src/mapkit/styling/arrow_style.dart'
    as mapkit_styling_arrow_style;
import 'package:yandex_maps_navikit/src/mapkit/styling/polyline_style.dart'
    as mapkit_styling_polyline_style;

part 'route_view_style_provider.containers.dart';
part 'route_view_style_provider.impl.dart';

/// The style that is used to display traffic intensity.
abstract class NavigationJamStyle implements ffi.Finalizable {
  /// Collection of colors for traffic intensity.
  void setColors(core.List<mapkit_navigation_jam_style.JamTypeColor> colors);

  void setGradientLength(core.double gradientLength);
}

abstract class NavigationRouteStyle implements ffi.Finalizable {
  /// Show or hide route. Enabled by default. Setting it to false will not
  /// hide balloons, road events, traffic lights. Hide it manually if
  /// needed.
  void setShowRoute(core.bool showRoute);

  /// Enable or disable traffic jams along route. Enabled by default.
  /// Unless this is disabled, MapKit forces palette and colors values in
  /// routePolyline to draw jams on route. When disabled, you are free to
  /// change the routes' colors.
  void setShowJams(core.bool showJams);

  /// Show balloons related to the route. Enabled by default.
  void setShowBalloons(core.bool showBalloons);

  /// Enable or disable road events on the route. Disabled by default.
  void setShowRoadEvents(core.bool showRoadEvents);

  /// Show traffic lights along the route. Disabled by default.
  void setShowTrafficLights(core.bool showTrafficLights);

  /// Show checkpoints along the route. Disabled by default.
  void setShowCheckpoints(core.bool showCheckpoints);

  /// Show railway crossings along the route. Disabled by default.
  void setShowRailwayCrossings(core.bool showRailwayCrossings);

  /// Show railway crossings along the route. Disabled by default.
  void setShowSpeedBumps(core.bool showSpeedBumps);

  /// Show roads in poor condition along the route. Disabled by default.
  void setShowRoadsInPoorCondition(core.bool showRoadsInPoorCondition);

  /// Show manoeuvre arrows along the route. Disabled by default.
  void setShowManoeuvres(core.bool showManoeuvres);
}

abstract class NavigationRouteViewStyleProvider {
  void provideJamStyle(
    directions_driving_flags.DrivingFlags flags,
    core.bool isSelected,
    core.bool isNightMode,
    NavigationJamStyle jamStyle,
  );

  void providePolylineStyle(
    directions_driving_flags.DrivingFlags flags,
    core.bool isSelected,
    core.bool isNightMode,
    mapkit_styling_polyline_style.PolylineStyle polylineStyle,
  );

  void provideManoeuvreStyle(
    directions_driving_flags.DrivingFlags flags,
    core.bool isSelected,
    core.bool isNightMode,
    mapkit_styling_arrow_style.ArrowStyle arrowStyle,
  );

  void provideRouteStyle(
    directions_driving_flags.DrivingFlags flags,
    core.bool isSelected,
    core.bool isNightMode,
    NavigationRouteStyle routeStyle,
  );
}
