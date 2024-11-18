import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/image/image_wrapper.dart'
    as image_wrapper;
import 'package:yandex_maps_navikit/src/directions/driving/flags.dart'
    as directions_driving_flags;
import 'package:yandex_maps_navikit/src/mapkit/request_point.dart'
    as mapkit_request_point;
import 'package:yandex_maps_navikit/src/mapkit/styling/arrow_style.dart'
    as mapkit_styling_arrow_style;
import 'package:yandex_maps_navikit/src/mapkit/styling/placemark_style.dart'
    as mapkit_styling_placemark_style;
import 'package:yandex_maps_navikit/src/mapkit/styling/polyline_style.dart'
    as mapkit_styling_polyline_style;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/balloon.dart'
    as navigation_automotive_layer_balloon;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/navigation_layer_mode.dart'
    as navigation_automotive_layer_navigation_layer_mode;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/styling/highlight_style_provider.dart'
    as navigation_automotive_layer_styling_highlight_style_provider;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/styling/route_view_style_provider.dart'
    as navigation_automotive_layer_styling_route_view_style_provider;
import 'package:yandex_maps_navikit/src/navigation/balloons/balloon_anchor.dart'
    as navigation_balloons_balloon_anchor;
import 'package:yandex_maps_navikit/src/navigation/balloons/balloon_geometry.dart'
    as navigation_balloons_balloon_geometry;

part 'default_style_providers.containers.dart';
part 'default_style_providers.impl.dart';

abstract class InternalDefaultUserPlacemarkStyleProvider
    implements ffi.Finalizable {
  void provideStyle(
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  });
}

abstract class InternalDefaultRequestPointStyleProvider
    implements ffi.Finalizable {
  void provideStyle(
    mapkit_request_point.RequestPointType requestPointType,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.int requestPointIndex,
    required core.int requestPointsNumber,
    required core.double scaleFactor,
    required core.bool isSelected,
    required core.bool isNightMode,
  });
}

abstract class InternalDefaultRoutePinsStyleProvider
    implements ffi.Finalizable {
  void provideTrafficLightStyle(
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  });

  void provideCheckpointStyle(
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  });

  void provideRailwayCrossingStyle(
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  });

  void provideRoadInPoorConditionStyle(
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle roadInPoorConditionStartStyle,
    mapkit_styling_placemark_style.PlacemarkStyle roadInPoorConditionEndStyle, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  });

  void provideSpeedBumpStyle(
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  });

  void provideTollRoadStyle(
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle tollRoadStartStyle,
    mapkit_styling_placemark_style.PlacemarkStyle tollRoadStartEnd, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  });

  void provideRestrictedEntryStyle(
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  });
}

abstract class InternalDefaultRouteViewStyleProvider
    implements ffi.Finalizable {
  void provideJamStyle(
    directions_driving_flags.DrivingFlags flags,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    navigation_automotive_layer_styling_route_view_style_provider
        .NavigationJamStyle
        jamStyle, {
    required core.bool isSelected,
    required core.bool isNightMode,
  });

  void providePolylineStyle(
    directions_driving_flags.DrivingFlags flags,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_polyline_style.PolylineStyle polylineStyle, {
    required core.bool isSelected,
    required core.bool isNightMode,
  });

  void provideManoeuvreStyle(
    directions_driving_flags.DrivingFlags flags,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_arrow_style.ArrowStyle arrowStyle, {
    required core.bool isSelected,
    required core.bool isNightMode,
  });

  void provideRouteStyle(
    directions_driving_flags.DrivingFlags flags,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    navigation_automotive_layer_styling_route_view_style_provider
        .NavigationRouteStyle
        routeStyle, {
    required core.bool isSelected,
    required core.bool isNightMode,
  });
}

abstract class InternalDefaultBalloonImageProvider implements ffi.Finalizable {
  /// returns geometry for all possible anchor placements
  core.List<navigation_balloons_balloon_geometry.BalloonGeometry>
      geometriesForBalloon(
    navigation_automotive_layer_balloon.Balloon balloon, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  });

  image_wrapper.ImageWrapper createImage(
    navigation_automotive_layer_balloon.Balloon balloon,
    navigation_balloons_balloon_anchor.BalloonAnchor anchor, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  });
}

abstract class InternalDefaultHighlightStyleProvider
    implements ffi.Finalizable {
  navigation_automotive_layer_styling_highlight_style_provider
      .SpeedControlHighlightStyle? provideSpeedControlStyle(
    navigation_automotive_layer_styling_highlight_style_provider.HighlightMode
        highlightMode, {
    required core.bool isNightMode,
  });
}

class InternalDefaultStyleProvidersFactory {
  InternalDefaultStyleProvidersFactory._();

  static InternalDefaultUserPlacemarkStyleProvider
      userPlacemarkStyleProvider() {
    return _userPlacemarkStyleProvider();
  }

  static InternalDefaultRequestPointStyleProvider requestPointStyleProvider() {
    return _requestPointStyleProvider();
  }

  static InternalDefaultRoutePinsStyleProvider routePinsStyleProvider() {
    return _routePinsStyleProvider();
  }

  static InternalDefaultRouteViewStyleProvider routeViewStyleProvider() {
    return _routeViewStyleProvider();
  }

  static InternalDefaultBalloonImageProvider balloonImageProvider() {
    return _balloonImageProvider();
  }

  static InternalDefaultHighlightStyleProvider highlightStyleProvider() {
    return _highlightStyleProvider();
  }
}
