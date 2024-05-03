part of 'route_status.dart';

@bindings_annotations.ContainerData(
    toNative: 'RouteStatusImpl.toPointer',
    toPlatform: '(val) => RouteStatusImpl.fromPointer(val, needFree: false)',
    platformType: 'RouteStatus')
extension RouteStatusImpl on RouteStatus {
  static core.int toInt(RouteStatus e) {
    return e.index;
  }

  static RouteStatus fromInt(core.int val) {
    return RouteStatus.values[val];
  }

  static RouteStatus? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(RouteStatus? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
