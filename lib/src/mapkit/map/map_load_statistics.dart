import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
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

part 'map_load_statistics.containers.dart';
part 'map_load_statistics.impl.dart';

/// The time it took to load map elements.

final class MapLoadStatistics {
  final core.Duration curZoomGeometryLoaded;
  final core.Duration curZoomPlacemarksLoaded;
  final core.Duration curZoomLabelsLoaded;

  /// The time it took to load delayed geometry.
  final core.Duration delayedGeometryLoaded;

  /// The time it took to load models.
  final core.Duration curZoomModelsLoaded;

  /// The time it took to load all map objects.
  final core.Duration fullyLoaded;

  /// The time it took for all map objects to appear.
  final core.Duration fullyAppeared;
  final core.int renderObjectCount;

  /// Tile memory usage in bytes
  final core.int tileMemoryUsage;

  const MapLoadStatistics(
    this.curZoomGeometryLoaded,
    this.curZoomPlacemarksLoaded,
    this.curZoomLabelsLoaded,
    this.delayedGeometryLoaded,
    this.curZoomModelsLoaded,
    this.fullyLoaded,
    this.fullyAppeared, {
    required this.renderObjectCount,
    required this.tileMemoryUsage,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        curZoomGeometryLoaded,
        curZoomPlacemarksLoaded,
        curZoomLabelsLoaded,
        delayedGeometryLoaded,
        curZoomModelsLoaded,
        fullyLoaded,
        fullyAppeared,
        renderObjectCount,
        tileMemoryUsage
      ]);

  @core.override
  core.bool operator ==(covariant MapLoadStatistics other) {
    if (core.identical(this, other)) {
      return true;
    }
    return curZoomGeometryLoaded == other.curZoomGeometryLoaded &&
        curZoomPlacemarksLoaded == other.curZoomPlacemarksLoaded &&
        curZoomLabelsLoaded == other.curZoomLabelsLoaded &&
        delayedGeometryLoaded == other.delayedGeometryLoaded &&
        curZoomModelsLoaded == other.curZoomModelsLoaded &&
        fullyLoaded == other.fullyLoaded &&
        fullyAppeared == other.fullyAppeared &&
        renderObjectCount == other.renderObjectCount &&
        tileMemoryUsage == other.tileMemoryUsage;
  }

  @core.override
  core.String toString() {
    return "MapLoadStatistics(curZoomGeometryLoaded: $curZoomGeometryLoaded, curZoomPlacemarksLoaded: $curZoomPlacemarksLoaded, curZoomLabelsLoaded: $curZoomLabelsLoaded, delayedGeometryLoaded: $delayedGeometryLoaded, curZoomModelsLoaded: $curZoomModelsLoaded, fullyLoaded: $fullyLoaded, fullyAppeared: $fullyAppeared, renderObjectCount: $renderObjectCount, tileMemoryUsage: $tileMemoryUsage)";
  }
}
