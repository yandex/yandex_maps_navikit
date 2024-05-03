part of 'location_class.dart';

@bindings_annotations.ContainerData(
    toNative: 'LocationClassImpl.toPointer',
    toPlatform: '(val) => LocationClassImpl.fromPointer(val, needFree: false)',
    platformType: 'LocationClass')
extension LocationClassImpl on LocationClass {
  static core.int toInt(LocationClass e) {
    return e.index;
  }

  static LocationClass fromInt(core.int val) {
    return LocationClass.values[val];
  }

  static LocationClass? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(LocationClass? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
