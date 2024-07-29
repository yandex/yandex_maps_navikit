import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;

part 'screen_types.containers.dart';
part 'screen_types.impl.dart';

/// A point on the device screen.

final class ScreenPoint {
  /// The horizontal position of the point in pixels from the left screen
  /// border.
  final core.double x;

  /// The vertical position of the point in pixels from the top screen
  /// border.
  final core.double y;

  const ScreenPoint({
    required this.x,
    required this.y,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([x, y]);

  @core.override
  core.bool operator ==(covariant ScreenPoint other) {
    if (core.identical(this, other)) {
      return true;
    }
    return x == other.x && y == other.y;
  }

  @core.override
  core.String toString() {
    return "ScreenPoint(x: $x, y: $y)";
  }
}

/// A rectangle on the device screen.

final class ScreenRect {
  /// The position of the top left corner of the rectangle.
  final ScreenPoint topLeft;

  /// The position of the bottom right corner of the rectangle.
  final ScreenPoint bottomRight;

  const ScreenRect(this.topLeft, this.bottomRight);

  @core.override
  core.int get hashCode => core.Object.hashAll([topLeft, bottomRight]);

  @core.override
  core.bool operator ==(covariant ScreenRect other) {
    if (core.identical(this, other)) {
      return true;
    }
    return topLeft == other.topLeft && bottomRight == other.bottomRight;
  }

  @core.override
  core.String toString() {
    return "ScreenRect(topLeft: $topLeft, bottomRight: $bottomRight)";
  }
}
