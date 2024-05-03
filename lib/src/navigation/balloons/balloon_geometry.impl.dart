part of 'balloon_geometry.dart';

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
    toNative: 'BalloonGeometryImpl.toPointer',
    toPlatform:
        '(val) => BalloonGeometryImpl.fromPointer(val, needFree: false)',
    platformType: 'BalloonGeometry')
extension BalloonGeometryImpl on BalloonGeometry {
  static BalloonGeometry fromNative(BalloonGeometryNative native) {
    return BalloonGeometry(
      navigation_balloons_balloon_anchor.BalloonAnchorImpl.fromNative(
          native.anchor),
      width: native.width,
      height: native.height,
      to_platform.toPlatformPoint(native.imageAnchor),
      mapkit_map_rect.RectImpl.fromNative(native.contentRect),
      mapkit_map_rect.RectImpl.fromNative(native.balloonRect),
    );
  }

  static BalloonGeometryNative toNative(BalloonGeometry obj) {
    return _BalloonGeometryNativeInit(
      navigation_balloons_balloon_anchor.BalloonAnchorImpl.toNative(obj.anchor),
      obj.width,
      obj.height,
      to_native.toNativePoint(obj.imageAnchor),
      mapkit_map_rect.RectImpl.toNative(obj.contentRect),
      mapkit_map_rect.RectImpl.toNative(obj.balloonRect),
    );
  }

  static BalloonGeometry? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        BalloonGeometryImpl.fromNative(ptr.cast<BalloonGeometryNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(BalloonGeometry? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<BalloonGeometryNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
