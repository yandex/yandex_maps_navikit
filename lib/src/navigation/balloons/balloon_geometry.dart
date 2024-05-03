import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:math' as math;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_navikit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/mapkit/map/rect.dart'
    as mapkit_map_rect;
import 'package:yandex_maps_navikit/src/navigation/balloons/balloon_anchor.dart'
    as navigation_balloons_balloon_anchor;

part 'balloon_geometry.containers.dart';
part 'balloon_geometry.impl.dart';

final class BalloonGeometry {
  final navigation_balloons_balloon_anchor.BalloonAnchor anchor;
  final core.double width;
  final core.double height;
  final math.Point<core.double> imageAnchor;
  final mapkit_map_rect.Rect contentRect;
  final mapkit_map_rect.Rect balloonRect;

  const BalloonGeometry(
    this.anchor,
    this.imageAnchor,
    this.contentRect,
    this.balloonRect, {
    required this.width,
    required this.height,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        anchor,
        width,
        height,
        imageAnchor,
        contentRect,
        balloonRect,
      ]);

  @core.override
  core.bool operator ==(covariant BalloonGeometry other) {
    if (core.identical(this, other)) {
      return true;
    }
    return anchor == other.anchor &&
        width == other.width &&
        height == other.height &&
        imageAnchor == other.imageAnchor &&
        contentRect == other.contentRect &&
        balloonRect == other.balloonRect;
  }

  @core.override
  core.String toString() {
    return "BalloonGeometry(anchor: $anchor, width: $width, height: $height, imageAnchor: $imageAnchor, contentRect: $contentRect, balloonRect: $balloonRect, )";
  }
}
