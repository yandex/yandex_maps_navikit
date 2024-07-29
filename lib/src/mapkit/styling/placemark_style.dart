import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:math' as math;
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
import 'package:yandex_maps_navikit/src/bindings/image/animated_image_provider.dart'
    as animated_image_provider;
import 'package:yandex_maps_navikit/src/bindings/image/image_provider.dart'
    as image_provider;

part 'placemark_style.containers.dart';
part 'placemark_style.impl.dart';

abstract class PlacemarkStyle implements ffi.Finalizable {
  /// Set the placemark to be an 3D arrow. Usable only for user position
  /// placemark.
  void setArrowModel();

  void setImage(image_provider.ImageProvider image);

  void setAnimatedImage(
      animated_image_provider.AnimatedImageProvider iconImage);

  /// Icon anchor, (0, 0) is top left and (1.0, 1.0) is bottom right.
  void setIconAnchor(math.Point<core.double> iconAnchor);

  /// Piecewise linear scale function. See Placemark's scale function.
  void setScaleFunction(core.List<math.Point<core.double>> points);

  /// Minimal zoom for placemark to be visible.
  void setMinZoomVisible(core.double? minZoom);

  core.bool isValid();
}
