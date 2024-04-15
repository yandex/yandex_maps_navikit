import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;

part 'route_status.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'RouteStatus.toPointer',
    toPlatform: '(val) => RouteStatus.fromPointer(val, needFree: false)')
enum RouteStatus {
  OnRoute,
  NotOnRoute,
  RouteFinished,
  RouteLost,
  ReturnedToRoute,
  WayPointReached,
  ;

  /// @nodoc
  @internal
  static RouteStatus fromInt(core.int val) {
    return RouteStatus.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(RouteStatus e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static RouteStatus? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(RouteStatus? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}
