import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;

part 'map_mode.containers.dart';
part 'map_mode.impl.dart';

/// Supported map style modes
enum MapMode {
  /// Basic map
  Map,

  /// Public transport map
  Transit,

  /// Automobile navigation map
  Driving,

  /// Administrative map
  Admin,

  /// Legacy basic map design, can be used to preserve compatibility with
  /// app design/legacy map customizaitons
  LegacyMap,

  /// Upcoming basic map design
  FutureMap,
  ;
}
