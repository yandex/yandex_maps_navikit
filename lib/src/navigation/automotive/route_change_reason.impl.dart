part of 'route_change_reason.dart';

@bindings_annotations.ContainerData(
    toNative: 'RouteChangeReasonImpl.toPointer',
    toPlatform:
        '(val) => RouteChangeReasonImpl.fromPointer(val, needFree: false)',
    platformType: 'RouteChangeReason')
extension RouteChangeReasonImpl on RouteChangeReason {
  static core.int toInt(RouteChangeReason e) {
    return e.index;
  }

  static RouteChangeReason fromInt(core.int val) {
    return RouteChangeReason.values[val];
  }

  static RouteChangeReason? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(RouteChangeReason? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
