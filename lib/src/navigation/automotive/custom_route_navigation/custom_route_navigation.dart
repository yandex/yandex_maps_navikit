import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_navikit/src/mapkit/map/map_window.dart'
    as mapkit_map_map_window;
import 'package:yandex_maps_navikit/src/navigation/automotive/navigation.dart'
    as navigation_automotive_navigation;
import 'package:yandex_maps_navikit/src/navigation/guidance_camera/camera.dart'
    as navigation_guidance_camera_camera;

part 'custom_route_navigation.containers.dart';
part 'custom_route_navigation.impl.dart';

abstract class CustomRouteNavigation implements ffi.Finalizable {
  /// This navigation is equal to standart automotive navigation BUT
  /// without alternatives without rerouting without working
  /// "requestRoutes" method traffic information will not be updated while
  /// driving along the route start guidance must be called only through
  /// the special method (startGuidance) of this class
  navigation_automotive_navigation.Navigation get navigation;

  /// This method allows to create camera which used in standart automotive
  /// navigation
  navigation_guidance_camera_camera.Camera createCamera(
      mapkit_map_map_window.MapWindow mapWindow);

  /// Start navigation with specified route.
  void startGuidance(directions_driving_route.DrivingRoute? route);
}

class CustomRouteNavigationFactory {
  CustomRouteNavigationFactory._();

  /// Method to create custom route navigation
  static CustomRouteNavigation createNavigation() {
    return _createNavigation();
  }
}
