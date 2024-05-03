import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:yandex_maps_navikit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_navikit/src/bindings/image/image_provider.dart'
    as image_provider;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/balloon.dart'
    as navigation_automotive_layer_balloon;
import 'package:yandex_maps_navikit/src/navigation/balloons/balloon_anchor.dart'
    as navigation_balloons_balloon_anchor;
import 'package:yandex_maps_navikit/src/navigation/balloons/balloon_geometry.dart'
    as navigation_balloons_balloon_geometry;

part 'balloon_image_provider.impl.dart';

abstract class NavigationBalloonImageProvider {
  /// returns geometry for all possible anchor placements
  core.List<navigation_balloons_balloon_geometry.BalloonGeometry>
      geometriesForBalloon(navigation_automotive_layer_balloon.Balloon balloon,
          core.double scaleFactor, core.bool isNightMode);

  image_provider.ImageProvider createImage(
      navigation_automotive_layer_balloon.Balloon balloon,
      navigation_balloons_balloon_anchor.BalloonAnchor anchor,
      core.double scaleFactor,
      core.bool isNightMode);
}
