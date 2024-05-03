part of 'annotator.dart';

@bindings_annotations.ContainerData(
    toNative: 'TransportAnnotationLanguageImpl.toPointer',
    toPlatform:
        '(val) => TransportAnnotationLanguageImpl.fromPointer(val, needFree: false)',
    platformType: 'TransportAnnotationLanguage')
extension TransportAnnotationLanguageImpl on TransportAnnotationLanguage {
  static core.int toInt(TransportAnnotationLanguage e) {
    return e.index;
  }

  static TransportAnnotationLanguage fromInt(core.int val) {
    return TransportAnnotationLanguage.values[val];
  }

  static TransportAnnotationLanguage? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(TransportAnnotationLanguage? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}
