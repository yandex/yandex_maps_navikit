import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
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

part 'route_options.containers.dart';
part 'route_options.impl.dart';

final class AutomotiveRouteOptions {
  final core.double? initialAzimuth;
  final core.int? routesCount;

  const AutomotiveRouteOptions({
    this.initialAzimuth,
    this.routesCount,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([initialAzimuth, routesCount]);

  @core.override
  core.bool operator ==(covariant AutomotiveRouteOptions other) {
    if (core.identical(this, other)) {
      return true;
    }
    return initialAzimuth == other.initialAzimuth &&
        routesCount == other.routesCount;
  }

  @core.override
  core.String toString() {
    return "AutomotiveRouteOptions(initialAzimuth: $initialAzimuth, routesCount: $routesCount)";
  }
}
