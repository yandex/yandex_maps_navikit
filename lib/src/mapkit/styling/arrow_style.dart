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

part 'arrow_style.containers.dart';
part 'arrow_style.impl.dart';

abstract class ArrowStyle implements ffi.Finalizable {
  /// Width of the arrow's outline in units. Default: 0
  void setOutlineWidth(
      mapkit_styling_proportion_function.StylingProportionFunction
          outlineWidth);

  /// Overall length of the arrow (including the tip) in units. Default:
  /// constantValue: 90
  void setLength(
      mapkit_styling_proportion_function.StylingProportionFunction length);

  /// Height of the arrow tip in units. Default: constantValue: 24
  void setTriangleHeight(
      mapkit_styling_proportion_function.StylingProportionFunction
          triangleHeight);

  /// Fill color of the arrow. Default: RGBA 0xFFFFFFFF.
  void setFillColor(ui.Color fillColor);

  /// Color of the arrow's outline. Default: RGBA 0x000000FF.
  void setOutlineColor(ui.Color outlineColor);

  /// Minimal zoom for maneuvers to be visible. Default: null
  void setMinZoomVisible(core.double? minZoom);
}
