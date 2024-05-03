import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;

part 'ford_crossing.containers.dart';
part 'ford_crossing.impl.dart';

final class DrivingFordCrossing {
  final mapkit_geometry_geometry.Subpolyline position;

  const DrivingFordCrossing(this.position);

  @core.override
  core.int get hashCode => core.Object.hashAll([position]);

  @core.override
  core.bool operator ==(covariant DrivingFordCrossing other) {
    if (core.identical(this, other)) {
      return true;
    }
    return position == other.position;
  }

  @core.override
  core.String toString() {
    return "DrivingFordCrossing(position: $position)";
  }
}
