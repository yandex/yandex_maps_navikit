import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:yandex_maps_navikit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/balloon_view.dart'
    as navigation_automotive_layer_balloon_view;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/route_view.dart'
    as navigation_automotive_layer_route_view;

part 'balloon_view_listener.impl.dart';

abstract class BalloonViewListener {
  void onBalloonViewsChanged(
      navigation_automotive_layer_route_view.RouteView route);

  void onBalloonViewTap(
      navigation_automotive_layer_balloon_view.BalloonView balloon);

  void onBalloonVisibilityChanged(
      navigation_automotive_layer_balloon_view.BalloonView balloon);

  /// called on BalloonView.balloon changing
  void onBalloonContentChanged(
      navigation_automotive_layer_balloon_view.BalloonView balloon);
}
