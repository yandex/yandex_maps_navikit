import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;

part 'speed_limit_status.containers.dart';
part 'speed_limit_status.impl.dart';

enum SpeedLimitStatus {
  /// Speed limit is not exceeded
  BelowLimit,

  /// Speed limit exceeded
  StrictLimitExceeded,

  /// Speed limit exceeded by tolerance
  TolerantLimitExceeded,
  ;
}
