part of 'navigation_layer_mode.dart';

@bindings_annotations.ContainerData(
    toNative: 'NavigationLayerModeImpl.toPointer',
    toPlatform:
        '(val) => NavigationLayerModeImpl.fromPointer(val, needFree: false)',
    platformType: 'NavigationLayerMode')
extension NavigationLayerModeImpl on NavigationLayerMode {
  static core.int toInt(NavigationLayerMode e) {
    return e.index;
  }

  static NavigationLayerMode fromInt(core.int val) {
    return NavigationLayerMode.values[val];
  }

  static NavigationLayerMode? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(NavigationLayerMode? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
