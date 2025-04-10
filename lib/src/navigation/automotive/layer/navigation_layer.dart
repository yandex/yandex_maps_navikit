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
import 'package:yandex_maps_navikit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_navikit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_navikit/src/mapkit/map/map_window.dart'
    as mapkit_map_map_window;
import 'package:yandex_maps_navikit/src/mapkit/road_events/event_tag.dart'
    as mapkit_road_events_event_tag;
import 'package:yandex_maps_navikit/src/mapkit/road_events_layer/road_event.dart'
    as mapkit_road_events_layer_road_event;
import 'package:yandex_maps_navikit/src/mapkit/road_events_layer/style_provider.dart'
    as mapkit_road_events_layer_style_provider;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/balloon_view_listener.dart'
    as navigation_automotive_layer_balloon_view_listener;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/navigation_layer_mode.dart'
    as navigation_automotive_layer_navigation_layer_mode;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/request_point_listener.dart'
    as navigation_automotive_layer_request_point_listener;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/route_view.dart'
    as navigation_automotive_layer_route_view;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/styling/style_provider.dart'
    as navigation_automotive_layer_styling_style_provider;
import 'package:yandex_maps_navikit/src/navigation/automotive/navigation.dart'
    as navigation_automotive_navigation;
import 'package:yandex_maps_navikit/src/navigation/guidance_camera/camera.dart'
    as navigation_guidance_camera_camera;

part 'navigation_layer.containers.dart';
part 'navigation_layer.impl.dart';

abstract class NavigationLayerListener {
  void onSelectedRouteChanged();

  void onModeChanged();
}

abstract class NavigationLayerPlacemarkTapListener {
  void onRoadEventPlacemarkTap(
      mapkit_road_events_layer_road_event.RoadEvent roadEvent);
}

abstract class NavigationLayer implements ffi.Finalizable {
  navigation_automotive_navigation.Navigation get navigation;
  navigation_guidance_camera_camera.Camera get camera;

  /// Current view mode
  navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
      get mode;

  /// Routes representation on the map.
  core.List<navigation_automotive_layer_route_view.RouteView> get routes;

  /// Enabled by default.
  core.bool get showRequestPoints;
  set showRequestPoints(core.bool val);

  core.bool get isVisible;
  set isVisible(core.bool val);

  /// Find appearance of route.
  navigation_automotive_layer_route_view.RouteView? getView(
      directions_driving_route.DrivingRoute route);

  /// NavigationLayer will try to show as much info as possible about
  /// selected route. For example if road event placemarks from different
  /// routes overlap, road event from selected route will be displayed,
  /// conflict will be hidden. None or one route can be selected at the
  /// same time. Pass nil/null to unselect route. Can be used only if
  /// mode() == NavigationLayerMode.RouteSelection
  void selectRoute(navigation_automotive_layer_route_view.RouteView? route);

  navigation_automotive_layer_route_view.RouteView? selectedRoute();

  /// Add this listener if you wish to handle taps on routes.
  ///
  /// The class does not retain the object in the 'routeViewListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addRouteViewListener(
      navigation_automotive_layer_route_view.RouteViewListener
          routeViewListener);

  void removeRouteViewListener(
      navigation_automotive_layer_route_view.RouteViewListener
          routeViewListener);

  void selectRoadEvent(core.String eventId);

  void deselectRoadEvent();

  /// Selects a request point with specified index. Only one point can be
  /// selected at a time. If some other point is selected already, it will
  /// be deselected.
  void selectRequestPoint(core.int requestPointIndex);

  /// Deselects selected request point if any.
  void deselectRequestPoint();

  /// Add this listener if you wish to handle taps on request points.
  ///
  /// The class does not retain the object in the 'requestPointListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addRequestPointListener(
      navigation_automotive_layer_request_point_listener.RequestPointListener
          requestPointListener);

  void removeRequestPointListener(
      navigation_automotive_layer_request_point_listener.RequestPointListener
          requestPointListener);

  /// The class does not retain the object in the 'balloonListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addBalloonViewListener(
      navigation_automotive_layer_balloon_view_listener.BalloonViewListener
          balloonListener);

  void removeBalloonViewListener(
      navigation_automotive_layer_balloon_view_listener.BalloonViewListener
          balloonListener);

  /// The class does not retain the object in the 'navigationLayerListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addListener(NavigationLayerListener navigationLayerListener);

  void removeListener(NavigationLayerListener navigationLayerListener);

  /// The class does not retain the object in the 'roadEventsListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addPlacemarkTapListener(
      NavigationLayerPlacemarkTapListener roadEventsListener);

  /// The class does not retain the object in the 'roaadEventsListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void removePlacemarkTapListener(
      NavigationLayerPlacemarkTapListener roaadEventsListener);

  /// Sets road events on route tag visibility. Setting local chats
  /// visibility will also set visibility for ordinary chats and vice
  /// versa. None are visible by default.
  void setRoadEventVisibleOnRoute(
    mapkit_road_events_event_tag.RoadEventsEventTag tag, {
    required core.bool on,
  });

  /// Removes layer from map. No further operations with layer should be
  /// performed.
  void removeFromMap();

  /// for debug usage only
  void setShowBalloonsGeometry(core.bool enabled);

  /// Force refresh style for all navigation layer objects.
  void refreshStyle();

  /// When in 2D mode: - map is switched to 2D mode - 'Free' and
  /// 'Following' camera modes have zero tilt - tilt changing gestures are
  /// disabled
  ///
  /// Disabled by default
  core.bool is2DMode();

  void set2DMode(core.bool enabled);

  core.bool isValid();
}

class NavigationLayerFactory {
  NavigationLayerFactory._();

  /// Adds navigation layer on the map.
  ///
  /// The class maintains a strong reference to the object in
  /// the 'roadEventsLayerStyleProvider' parameter until it (the class) is invalidated.
  ///
  /// The class maintains a strong reference to the object in
  /// the 'styleProvider' parameter until it (the class) is invalidated.
  static NavigationLayer createNavigationLayer(
      mapkit_map_map_window.MapWindow mapWindow,
      mapkit_road_events_layer_style_provider.RoadEventsLayerStyleProvider
          roadEventsLayerStyleProvider,
      navigation_automotive_layer_styling_style_provider.NavigationStyleProvider
          styleProvider,
      navigation_automotive_navigation.Navigation navigation) {
    return _createNavigationLayer(
      mapWindow,
      roadEventsLayerStyleProvider,
      styleProvider,
      navigation,
    );
  }
}
