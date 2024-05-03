part of 'speed_limit_status.dart';

@bindings_annotations.ContainerData(
    toNative: 'SpeedLimitStatusImpl.toPointer',
    toPlatform:
        '(val) => SpeedLimitStatusImpl.fromPointer(val, needFree: false)',
    platformType: 'SpeedLimitStatus')
extension SpeedLimitStatusImpl on SpeedLimitStatus {
  static core.int toInt(SpeedLimitStatus e) {
    return e.index;
  }

  static SpeedLimitStatus fromInt(core.int val) {
    return SpeedLimitStatus.values[val];
  }

  static SpeedLimitStatus? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(SpeedLimitStatus? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
