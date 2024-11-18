import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:ffi/ffi.dart';
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
import 'package:yandex_maps_navikit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;

part 'highlight_style_provider.containers.dart';
part 'highlight_style_provider.impl.dart';

final class SpeedControlHighlightStyle {
  final ui.Color strokeColor;

  /// Sets the stroke width in units. The size of a unit is equal to the
  /// size of a pixel at the current zoom level when the camera position's
  /// tilt is equal to 0 and the scale factor is equal to 1.
  final core.double strokeWidth;
  final ui.Color fillColor;

  /// Sets the maximum circle radius in units.
  final core.double maximumRadius;

  /// Sets the time it takes for the circle to reach its maximum size.
  final core.Duration animationDuration;

  /// Pulsation center on road event pin image. (0, 0) is top left and
  /// (1.0, 1.0) is bottom right.
  final math.Point<core.double> pulsationCenter;

  const SpeedControlHighlightStyle(
    this.strokeColor,
    this.fillColor,
    this.animationDuration,
    this.pulsationCenter, {
    required this.strokeWidth,
    required this.maximumRadius,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        strokeColor,
        strokeWidth,
        fillColor,
        maximumRadius,
        animationDuration,
        pulsationCenter,
      ]);

  @core.override
  core.bool operator ==(covariant SpeedControlHighlightStyle other) {
    if (core.identical(this, other)) {
      return true;
    }
    return strokeColor == other.strokeColor &&
        strokeWidth == other.strokeWidth &&
        fillColor == other.fillColor &&
        maximumRadius == other.maximumRadius &&
        animationDuration == other.animationDuration &&
        pulsationCenter == other.pulsationCenter;
  }

  @core.override
  core.String toString() {
    return "SpeedControlHighlightStyle(strokeColor: $strokeColor, strokeWidth: $strokeWidth, fillColor: $fillColor, maximumRadius: $maximumRadius, animationDuration: $animationDuration, pulsationCenter: $pulsationCenter, )";
  }
}

enum HighlightMode {
  SoftPulsation,
  HardPulsation,
  ;
}

abstract class HighlightStyleProvider {
  SpeedControlHighlightStyle? provideSpeedControlStyle(
    core.bool isNightMode,
    HighlightMode highlightMode,
  );
}
