import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/async.dart'
    show runWithBlockUi;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/mapkit/geo_object.dart'
    as mapkit_geo_object;

part 'geo_object_tap_event.containers.dart';
part 'geo_object_tap_event.impl.dart';

/// Information about the tapped object.
abstract class GeoObjectTapEvent implements ffi.Finalizable {
  /// Return GeoObject The object that was tapped.
  mapkit_geo_object.GeoObject get geoObject;

  /// Usable only in [runWithBlockUi] or listener handlers.
  core.bool isValid();
}
