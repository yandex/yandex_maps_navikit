import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;

part 'balloon_anchor.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'VerticalPosition.toPointer',
    toPlatform: '(val) => VerticalPosition.fromPointer(val, needFree: false)')
enum VerticalPosition {
  Top,
  Center,
  Bottom,
  ;

  /// @nodoc
  @internal
  static VerticalPosition fromInt(core.int val) {
    return VerticalPosition.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(VerticalPosition e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static VerticalPosition? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(VerticalPosition? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'HorizontalPosition.toPointer',
    toPlatform: '(val) => HorizontalPosition.fromPointer(val, needFree: false)')
enum HorizontalPosition {
  Left,
  Center,
  Right,
  ;

  /// @nodoc
  @internal
  static HorizontalPosition fromInt(core.int val) {
    return HorizontalPosition.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(HorizontalPosition e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static HorizontalPosition? fromPointer(ffi.Pointer<ffi.Void> ptr,
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
  static ffi.Pointer<ffi.Void> toPointer(HorizontalPosition? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
final class BalloonAnchorNative extends ffi.Struct {
  @ffi.Int64()
  external core.int vertical;
  @ffi.Int64()
  external core.int horizontal;
}

final BalloonAnchorNative Function(core.int, core.int)
    _BalloonAnchorNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    BalloonAnchorNative Function(ffi.Int64, ffi.Int64)>>(
            'yandex_flutter_navigation_balloons_BalloonAnchor_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'BalloonAnchor.toPointer',
    toPlatform: '(val) => BalloonAnchor.fromPointer(val, needFree: false)')
class BalloonAnchor {
  final VerticalPosition vertical;
  final HorizontalPosition horizontal;

  const BalloonAnchor(this.vertical, this.horizontal);

  /// @nodoc
  @internal
  BalloonAnchor.fromNative(BalloonAnchorNative native)
      : this(VerticalPosition.fromInt(native.vertical),
            HorizontalPosition.fromInt(native.horizontal));

  /// @nodoc
  @internal
  static BalloonAnchorNative toNative(BalloonAnchor c) {
    return _BalloonAnchorNativeInit(VerticalPosition.toInt(c.vertical),
        HorizontalPosition.toInt(c.horizontal));
  }

  /// @nodoc
  @internal
  static BalloonAnchor? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result =
        BalloonAnchor.fromNative(ptr.cast<BalloonAnchorNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(BalloonAnchor? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<BalloonAnchorNative>();
    result.ref = toNative(val);

    return result.cast<ffi.Void>();
  }
}
