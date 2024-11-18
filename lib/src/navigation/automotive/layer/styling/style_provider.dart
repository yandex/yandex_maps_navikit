import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:yandex_maps_navikit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/mapkit/request_point.dart'
    as mapkit_request_point;
import 'package:yandex_maps_navikit/src/mapkit/styling/placemark_style.dart'
    as mapkit_styling_placemark_style;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/navigation_layer_mode.dart'
    as navigation_automotive_layer_navigation_layer_mode;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/styling/balloon_image_provider.dart'
    as navigation_automotive_layer_styling_balloon_image_provider;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/styling/highlight_style_provider.dart'
    as navigation_automotive_layer_styling_highlight_style_provider;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/styling/route_view_style_provider.dart'
    as navigation_automotive_layer_styling_route_view_style_provider;

part 'style_provider.impl.dart';

abstract class NavigationUserPlacemarkStyleProvider {
  void provideStyle(
    core.double scaleFactor,
    core.bool isNightMode,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style,
  );
}

abstract class NavigationRequestPointStyleProvider {
  void provideStyle(
    core.int requestPointIndex,
    core.int requestPointsNumber,
    mapkit_request_point.RequestPointType requestPointType,
    core.double scaleFactor,
    core.bool isSelected,
    core.bool isNightMode,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style,
  );
}

abstract class NavigationRoutePinsStyleProvider {
  void provideTrafficLightStyle(
    core.double scaleFactor,
    core.bool isNightMode,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style,
  );

  void provideCheckpointStyle(
    core.double scaleFactor,
    core.bool isNightMode,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style,
  );

  void provideRailwayCrossingStyle(
    core.double scaleFactor,
    core.bool isNightMode,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style,
  );

  void provideRoadInPoorConditionStyle(
    core.double scaleFactor,
    core.bool isNightMode,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle roadInPoorConditionStartStyle,
    mapkit_styling_placemark_style.PlacemarkStyle roadInPoorConditionEndStyle,
  );

  void provideTollRoadStyle(
    core.double scaleFactor,
    core.bool isNightMode,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle tollRoadStartStyle,
    mapkit_styling_placemark_style.PlacemarkStyle tollRoadEndStyle,
  );

  void provideRestrictedEntryStyle(
    core.double scaleFactor,
    core.bool isNightMode,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style,
  );

  void provideSpeedBumpStyle(
    core.double scaleFactor,
    core.bool isNightMode,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style,
  );
}

/// Provides default style and icons when for navigation_layer objects
/// when their look is refreshed (for example on creation or on night
/// mode switch).
abstract class NavigationStyleProvider {
  navigation_automotive_layer_styling_route_view_style_provider
      .NavigationRouteViewStyleProvider routeViewStyleProvider();

  navigation_automotive_layer_styling_balloon_image_provider
      .NavigationBalloonImageProvider balloonImageProvider();

  NavigationRequestPointStyleProvider requestPointStyleProvider();

  NavigationUserPlacemarkStyleProvider userPlacemarkStyleProvider();

  NavigationRoutePinsStyleProvider routePinsStyleProvider();

  navigation_automotive_layer_styling_highlight_style_provider
      .HighlightStyleProvider highlightStyleProvider();
}
