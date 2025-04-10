import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/balloon.dart'
    as navigation_automotive_layer_balloon;
import 'package:yandex_maps_navikit/src/navigation/balloons/balloon_anchor.dart'
    as navigation_balloons_balloon_anchor;

part 'balloon_view.containers.dart';
part 'balloon_view.impl.dart';

abstract class BalloonView implements ffi.Finalizable {
  navigation_balloons_balloon_anchor.BalloonAnchor get anchor;
  navigation_automotive_layer_balloon.Balloon get balloon;

  /// True if balloon currently visible on the screen. Always false if
  /// balloon disabled
  core.bool get isVisible;

  /// If 'true', balloons will be shown whenever it possible. If 'false',
  /// balloons will be always hidden.
  /// `BalloonViewListener.onBalloonContentChanged` is called regardless of
  /// isEnabled value. `RouteView.showBalloons` call changes this
  /// attribute. Enabled by default.
  core.bool get isEnabled;
  set isEnabled(core.bool val);

  /// The route to which this balloon belongs.
  directions_driving_route.DrivingRoute get hostRoute;
  core.bool isValid();
}
