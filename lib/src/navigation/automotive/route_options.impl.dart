part of 'route_options.dart';

final class AutomotiveRouteOptionsNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> initialAzimuth;
  external ffi.Pointer<ffi.Void> routesCount;
}

final AutomotiveRouteOptionsNative Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _AutomotiveRouteOptionsNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    AutomotiveRouteOptionsNative Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_AutomotiveRouteOptions_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'AutomotiveRouteOptionsImpl.toPointer',
    toPlatform:
        '(val) => AutomotiveRouteOptionsImpl.fromPointer(val, needFree: false)',
    platformType: 'AutomotiveRouteOptions')
extension AutomotiveRouteOptionsImpl on AutomotiveRouteOptions {
  static AutomotiveRouteOptions fromNative(
      AutomotiveRouteOptionsNative native) {
    return AutomotiveRouteOptions(
        initialAzimuth:
            to_platform.toPlatformFromPointerDouble(native.initialAzimuth),
        routesCount: to_platform.toPlatformFromPointerInt(native.routesCount));
  }

  static AutomotiveRouteOptionsNative toNative(AutomotiveRouteOptions obj) {
    return _AutomotiveRouteOptionsNativeInit(
        to_native.toNativePtrDouble(obj.initialAzimuth),
        to_native.toNativePtrInt(obj.routesCount));
  }

  static AutomotiveRouteOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = AutomotiveRouteOptionsImpl.fromNative(
        ptr.cast<AutomotiveRouteOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(AutomotiveRouteOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<AutomotiveRouteOptionsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}
