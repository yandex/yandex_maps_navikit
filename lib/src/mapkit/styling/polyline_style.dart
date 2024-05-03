import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:ui' as ui;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/mapkit/styling/proportion_function.dart'
    as mapkit_styling_proportion_function;

part 'polyline_style.containers.dart';
part 'polyline_style.impl.dart';

/// Zoom and tilt independent styling parameters for outline. Default
/// values for PolylineStyle fields are the same as corresponding
/// PolylineMapObject if not specified explicitly.
abstract class PolylineStyle implements ffi.Finalizable {
  /// The stroke width in units (see
  /// mapkit.map.PolylineMapObject.strokeWidth for details). Default:
  /// constantValue: 5
  void setStrokeWidth(
      mapkit_styling_proportion_function.StylingProportionFunction strokeWidth);

  /// Width of the outline in units. Default: 0
  void setOutlineWidth(
      mapkit_styling_proportion_function.StylingProportionFunction
          outlineWidth);

  /// Primary color of polyline. Used only if jams disabled or unavailable.
  void setStrokeColor(ui.Color strokeColor);

  /// Color of outline in polyline.
  void setOutlineColor(ui.Color outlineColor);

  /// Enables the inner outline if true (a dark border along the edge of
  /// the outline).
  void setInnerOutlineEnabled(core.bool innerOutlineEnabled);

  /// Maximum radius of a turn. Measured in units.
  void setTurnRadius(core.double turnRadius);

  /// Defines step of arc approximation. Smaller values make polyline
  /// smoother. Measured in degrees.
  void setArcApproximationStep(core.double arcApproximationStep);

  /// Length of a dash in units. Default: 0 (dashing is turned off). Arrows
  /// are ignored in dashed polylines.
  void setDashLength(core.double dashLength);

  /// Length of the gap between two dashes in units. Default: 0 (dashing is
  /// turned off). Arrows are ignored in dashed polylines.
  void setGapLength(core.double gapLength);

  /// Offset from the start of the polyline to the reference dash in units.
  /// Default: 0.
  void setDashOffset(core.double dashOffset);
}
