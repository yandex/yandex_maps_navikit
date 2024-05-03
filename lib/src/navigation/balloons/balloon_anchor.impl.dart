part of 'balloon_anchor.dart';

@bindings_annotations.ContainerData(
    toNative: 'VerticalPositionImpl.toPointer',
    toPlatform:
        '(val) => VerticalPositionImpl.fromPointer(val, needFree: false)',
    platformType: 'VerticalPosition')
extension VerticalPositionImpl on VerticalPosition {
  static core.int toInt(VerticalPosition e) {
    return e.index;
  }

  static VerticalPosition fromInt(core.int val) {
    return VerticalPosition.values[val];
  }

  static VerticalPosition? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(VerticalPosition? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'HorizontalPositionImpl.toPointer',
    toPlatform:
        '(val) => HorizontalPositionImpl.fromPointer(val, needFree: false)',
    platformType: 'HorizontalPosition')
extension HorizontalPositionImpl on HorizontalPosition {
  static core.int toInt(HorizontalPosition e) {
    return e.index;
  }

  static HorizontalPosition fromInt(core.int val) {
    return HorizontalPosition.values[val];
  }

  static HorizontalPosition? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(HorizontalPosition? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

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
    toNative: 'BalloonAnchorImpl.toPointer',
    toPlatform: '(val) => BalloonAnchorImpl.fromPointer(val, needFree: false)',
    platformType: 'BalloonAnchor')
extension BalloonAnchorImpl on BalloonAnchor {
  static BalloonAnchor fromNative(BalloonAnchorNative native) {
    return BalloonAnchor(VerticalPositionImpl.fromInt(native.vertical),
        HorizontalPositionImpl.fromInt(native.horizontal));
  }

  static BalloonAnchorNative toNative(BalloonAnchor obj) {
    return _BalloonAnchorNativeInit(VerticalPositionImpl.toInt(obj.vertical),
        HorizontalPositionImpl.toInt(obj.horizontal));
  }

  static BalloonAnchor? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        BalloonAnchorImpl.fromNative(ptr.cast<BalloonAnchorNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(BalloonAnchor? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<BalloonAnchorNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
