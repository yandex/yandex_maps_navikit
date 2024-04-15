import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;

part 'speed_limit_status.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'SpeedLimitStatus.toPointer',
    toPlatform: '(val) => SpeedLimitStatus.fromPointer(val, needFree: false)')
enum SpeedLimitStatus {
  /// Speed limit is not exceeded
  BelowLimit,

  /// Speed limit exceeded
  StrictLimitExceeded,

  /// Speed limit exceeded by tolerance
  TolerantLimitExceeded,
  ;

  /// @nodoc
  @internal
  static SpeedLimitStatus fromInt(core.int val) {
    return SpeedLimitStatus.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(SpeedLimitStatus e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static SpeedLimitStatus? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(SpeedLimitStatus? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}
