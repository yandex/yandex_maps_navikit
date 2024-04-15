import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:math' as math;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
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
import 'package:yandex_maps_navikit/src/mapkit/map/rect.dart'
    as mapkit_map_rect;
import 'package:yandex_maps_navikit/src/navigation/balloons/balloon_anchor.dart'
    as navigation_balloons_balloon_anchor;

part 'balloon_geometry.containers.dart';

/// @nodoc
final class BalloonGeometryNative extends ffi.Struct {
  external navigation_balloons_balloon_anchor.BalloonAnchorNative anchor;
  @ffi.Float()
  external core.double width;
  @ffi.Float()
  external core.double height;
  external native_types.NativePoint imageAnchor;
  external mapkit_map_rect.RectNative contentRect;
  external mapkit_map_rect.RectNative balloonRect;
}

final BalloonGeometryNative Function(
  navigation_balloons_balloon_anchor.BalloonAnchorNative,
  core.double,
  core.double,
  native_types.NativePoint,
  mapkit_map_rect.RectNative,
  mapkit_map_rect.RectNative,
) _BalloonGeometryNativeInit = lib.library
    .lookup<
        ffi.NativeFunction<
            BalloonGeometryNative Function(
              navigation_balloons_balloon_anchor.BalloonAnchorNative,
              ffi.Float,
              ffi.Float,
              native_types.NativePoint,
              mapkit_map_rect.RectNative,
              mapkit_map_rect.RectNative,
            )>>('yandex_flutter_navigation_balloons_BalloonGeometry_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'BalloonGeometry.toPointer',
    toPlatform: '(val) => BalloonGeometry.fromPointer(val, needFree: false)')
class BalloonGeometry {
  final navigation_balloons_balloon_anchor.BalloonAnchor anchor;
  final core.double width;
  final core.double height;
  final math.Point<core.double> imageAnchor;
  final mapkit_map_rect.Rect contentRect;
  final mapkit_map_rect.Rect balloonRect;

  const BalloonGeometry(
    this.anchor,
    this.imageAnchor,
    this.contentRect,
    this.balloonRect, {
    required this.width,
    required this.height,
  });

  /// @nodoc
  @internal
  BalloonGeometry.fromNative(BalloonGeometryNative native)
      : this(
          navigation_balloons_balloon_anchor.BalloonAnchor.fromNative(
              native.anchor),
          width: native.width,
          height: native.height,
          to_platform.toPlatformPoint(native.imageAnchor),
          mapkit_map_rect.Rect.fromNative(native.contentRect),
          mapkit_map_rect.Rect.fromNative(native.balloonRect),
        );

  /// @nodoc
  @internal
  static BalloonGeometryNative toNative(BalloonGeometry c) {
    return _BalloonGeometryNativeInit(
      navigation_balloons_balloon_anchor.BalloonAnchor.toNative(c.anchor),
      c.width,
      c.height,
      to_native.toNativePoint(c.imageAnchor),
      mapkit_map_rect.Rect.toNative(c.contentRect),
      mapkit_map_rect.Rect.toNative(c.balloonRect),
    );
  }

  /// @nodoc
  @internal
  static BalloonGeometry? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        BalloonGeometry.fromNative(ptr.cast<BalloonGeometryNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(BalloonGeometry? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<BalloonGeometryNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
