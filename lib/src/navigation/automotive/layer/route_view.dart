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
import 'package:yandex_maps_navikit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_navikit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/balloon_view.dart'
    as navigation_automotive_layer_balloon_view;

part 'route_view.containers.dart';
part 'route_view.impl.dart';

abstract class RouteView implements ffi.Finalizable {
  directions_driving_route.DrivingRoute get route;

  /// Balloons displayed on map about the route.
  core.List<navigation_automotive_layer_balloon_view.BalloonView>
      get balloonViews;
  core.bool isValid();
}

abstract class RouteViewListener {
  void onRouteViewsChanged();

  void onRouteViewTap(RouteView route);
}
