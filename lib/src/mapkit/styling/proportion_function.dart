import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:math' as math;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_navikit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;

part 'proportion_function.containers.dart';
part 'proportion_function.impl.dart';

abstract final class StylingConstantFunctionPoints implements ffi.Finalizable {
  factory StylingConstantFunctionPoints(core.double value) =>
      StylingConstantFunctionPointsImpl(value);

  core.double get value;

  @core.override
  core.int get hashCode => core.Object.hashAll([value]);

  @core.override
  core.bool operator ==(covariant StylingConstantFunctionPoints other) {
    if (core.identical(this, other)) {
      return true;
    }
    return value == other.value;
  }

  @core.override
  core.String toString() {
    return "StylingConstantFunctionPoints(value: $value)";
  }
}

abstract final class StylingLinearZoomFunctionPoints
    implements ffi.Finalizable {
  factory StylingLinearZoomFunctionPoints(
          core.List<math.Point<core.double>> points) =>
      StylingLinearZoomFunctionPointsImpl(points);

  core.List<math.Point<core.double>> get points;

  @core.override
  core.int get hashCode => core.Object.hashAll([points]);

  @core.override
  core.bool operator ==(covariant StylingLinearZoomFunctionPoints other) {
    if (core.identical(this, other)) {
      return true;
    }
    return points == other.points;
  }

  @core.override
  core.String toString() {
    return "StylingLinearZoomFunctionPoints(points: $points)";
  }
}

abstract final class StylingLinearTiltFunctionPoints
    implements ffi.Finalizable {
  factory StylingLinearTiltFunctionPoints(
          core.List<math.Point<core.double>> points) =>
      StylingLinearTiltFunctionPointsImpl(points);

  core.List<math.Point<core.double>> get points;

  @core.override
  core.int get hashCode => core.Object.hashAll([points]);

  @core.override
  core.bool operator ==(covariant StylingLinearTiltFunctionPoints other) {
    if (core.identical(this, other)) {
      return true;
    }
    return points == other.points;
  }

  @core.override
  core.String toString() {
    return "StylingLinearTiltFunctionPoints(points: $points)";
  }
}

abstract final class StylingBilinearFunctionMatrix implements ffi.Finalizable {
  factory StylingBilinearFunctionMatrix(
          core.List<core.double> zooms,
          core.List<core.double> tilts,
          core.List<core.List<core.double>> points) =>
      StylingBilinearFunctionMatrixImpl(zooms, tilts, points);

  core.List<core.double> get zooms;
  core.List<core.double> get tilts;
  core.List<core.List<core.double>> get points;

  @core.override
  core.int get hashCode => core.Object.hashAll([zooms, tilts, points]);

  @core.override
  core.bool operator ==(covariant StylingBilinearFunctionMatrix other) {
    if (core.identical(this, other)) {
      return true;
    }
    return zooms == other.zooms &&
        tilts == other.tilts &&
        points == other.points;
  }

  @core.override
  core.String toString() {
    return "StylingBilinearFunctionMatrix(zooms: $zooms, tilts: $tilts, points: $points)";
  }
}

final class StylingProportionFunction {
  const StylingProportionFunction.fromConstantFunctionPoints(
      StylingConstantFunctionPoints constantFunction)
      : _value = constantFunction;

  const StylingProportionFunction.fromLinearZoomFunctionPoints(
      StylingLinearZoomFunctionPoints zoomFunction)
      : _value = zoomFunction;

  const StylingProportionFunction.fromLinearTiltFunctionPoints(
      StylingLinearTiltFunctionPoints tiltFunction)
      : _value = tiltFunction;

  const StylingProportionFunction.fromBilinearFunctionMatrix(
      StylingBilinearFunctionMatrix zoomTiltFunction)
      : _value = zoomTiltFunction;

  StylingConstantFunctionPoints? asConstantFunctionPoints() {
    if (_value is StylingConstantFunctionPoints) {
      return _value;
    }
    return null;
  }

  StylingLinearZoomFunctionPoints? asLinearZoomFunctionPoints() {
    if (_value is StylingLinearZoomFunctionPoints) {
      return _value;
    }
    return null;
  }

  StylingLinearTiltFunctionPoints? asLinearTiltFunctionPoints() {
    if (_value is StylingLinearTiltFunctionPoints) {
      return _value;
    }
    return null;
  }

  StylingBilinearFunctionMatrix? asBilinearFunctionMatrix() {
    if (_value is StylingBilinearFunctionMatrix) {
      return _value;
    }
    return null;
  }

  /// Applies the passed function to the variant value.
  void when({
    required void Function(StylingConstantFunctionPoints value)
        onConstantFunctionPoints,
    required void Function(StylingLinearZoomFunctionPoints value)
        onLinearZoomFunctionPoints,
    required void Function(StylingLinearTiltFunctionPoints value)
        onLinearTiltFunctionPoints,
    required void Function(StylingBilinearFunctionMatrix value)
        onBilinearFunctionMatrix,
  }) {
    if (_value is StylingConstantFunctionPoints) {
      return onConstantFunctionPoints(_value as StylingConstantFunctionPoints);
    }
    if (_value is StylingLinearZoomFunctionPoints) {
      return onLinearZoomFunctionPoints(
          _value as StylingLinearZoomFunctionPoints);
    }
    if (_value is StylingLinearTiltFunctionPoints) {
      return onLinearTiltFunctionPoints(
          _value as StylingLinearTiltFunctionPoints);
    }
    if (_value is StylingBilinearFunctionMatrix) {
      return onBilinearFunctionMatrix(_value as StylingBilinearFunctionMatrix);
    }
    assert(false);
  }

  final core.dynamic _value;
}
