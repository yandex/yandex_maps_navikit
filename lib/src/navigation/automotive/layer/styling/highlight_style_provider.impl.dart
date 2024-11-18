part of 'highlight_style_provider.dart';

final class SpeedControlHighlightStyleNative extends ffi.Struct {
  external native_types.NativeColor strokeColor;
  @ffi.Float()
  external core.double strokeWidth;
  external native_types.NativeColor fillColor;
  @ffi.Float()
  external core.double maximumRadius;
  external native_types.NativeInterval animationDuration;
  external native_types.NativePoint pulsationCenter;
}

final SpeedControlHighlightStyleNative Function(
  native_types.NativeColor,
  core.double,
  native_types.NativeColor,
  core.double,
  native_types.NativeInterval,
  native_types.NativePoint,
) _SpeedControlHighlightStyleNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                SpeedControlHighlightStyleNative Function(
                  native_types.NativeColor,
                  ffi.Float,
                  native_types.NativeColor,
                  ffi.Float,
                  native_types.NativeInterval,
                  native_types.NativePoint,
                )>>(
        'yandex_flutter_navigation_automotive_layer_styling_SpeedControlHighlightStyle_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SpeedControlHighlightStyleImpl.toPointer',
    toPlatform:
        '(val) => SpeedControlHighlightStyleImpl.fromPointer(val, needFree: false)',
    platformType: 'SpeedControlHighlightStyle')
extension SpeedControlHighlightStyleImpl on SpeedControlHighlightStyle {
  static SpeedControlHighlightStyle fromNative(
      SpeedControlHighlightStyleNative native) {
    return SpeedControlHighlightStyle(
      to_platform.toPlatformColor(native.strokeColor),
      strokeWidth: native.strokeWidth,
      to_platform.toPlatformColor(native.fillColor),
      maximumRadius: native.maximumRadius,
      to_platform.toPlatformTimeInterval(native.animationDuration),
      to_platform.toPlatformPoint(native.pulsationCenter),
    );
  }

  static SpeedControlHighlightStyleNative toNative(
      SpeedControlHighlightStyle obj) {
    return _SpeedControlHighlightStyleNativeInit(
      to_native.toNativeColor(obj.strokeColor),
      obj.strokeWidth,
      to_native.toNativeColor(obj.fillColor),
      obj.maximumRadius,
      to_native.toNativeTimeInterval(obj.animationDuration),
      to_native.toNativePoint(obj.pulsationCenter),
    );
  }

  static SpeedControlHighlightStyle? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = SpeedControlHighlightStyleImpl.fromNative(
        ptr.cast<SpeedControlHighlightStyleNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SpeedControlHighlightStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SpeedControlHighlightStyleNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'HighlightModeImpl.toPointer',
    toPlatform: '(val) => HighlightModeImpl.fromPointer(val, needFree: false)',
    platformType: 'HighlightMode')
extension HighlightModeImpl on HighlightMode {
  static core.int toInt(HighlightMode e) {
    return e.index;
  }

  static HighlightMode fromInt(core.int val) {
    return HighlightMode.values[val];
  }

  static HighlightMode? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(HighlightMode? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

extension HighlightStyleProviderImpl on HighlightStyleProvider {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, HighlightStyleProvider>{};
  static final _listenerToPointer =
      <HighlightStyleProvider, ffi.Pointer<ffi.Void>>{};

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _HighlightStyleProvider_free(ptr);
    final listener = _pointerToListener[ptr];
    _listenerToPointer.remove(listener);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _renewNonExsistPointer(
      ffi.Pointer<ffi.Void> ptr) {
    if (!_HighlightStyleProvider_exists(ptr)) {
      final listener = _pointerToListener[ptr];
      _pointerToListener.remove(ptr);
      _listenerToPointer.remove(listener);
      return _newNativeObject(listener!);
    }
    return ptr;
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(HighlightStyleProvider obj) {
    final ptr = _HighlightStyleProvider_new(ffi.Pointer.fromFunction<
        ffi.Pointer<ffi.Void> Function(
          ffi.Pointer<ffi.Void>,
          ffi.Bool,
          ffi.Int64,
        )>(_HighlightStyleProvider_provideSpeedControlStyle));
    _pointerToListener[ptr] = obj;
    _listenerToPointer[obj] = ptr;
    _HighlightStyleProvidersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(HighlightStyleProvider? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return _renewNonExsistPointer(foundPointer);
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _HighlightStyleProvidersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_styling_HighlightStyleProvider_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Pointer<ffi.Void> Function(
              ffi.Pointer<ffi.Void>,
              ffi.Bool,
              ffi.Int64,
            )>>) _HighlightStyleProvider_new = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Pointer<ffi.Void> Function(
                              ffi.Pointer<ffi.Void>,
                              ffi.Bool,
                              ffi.Int64,
                            )>>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_HighlightStyleProvider_new')
    .asFunction(isLeaf: true);

final void Function(ffi.Pointer<ffi.Void>) _HighlightStyleProvider_free = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_HighlightStyleProvider_free')
    .asFunction(isLeaf: true);
final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _HighlightStyleProvider_exists = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_HighlightStyleProvider_exists')
    .asFunction(isLeaf: true);

ffi.Pointer<ffi.Void> _HighlightStyleProvider_provideSpeedControlStyle(
  ffi.Pointer<ffi.Void> _ptr,
  core.bool isNightMode,
  core.int highlightMode,
) {
  final listener = HighlightStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return SpeedControlHighlightStyleImpl.toPointer(
        listener.provideSpeedControlStyle(
      isNightMode,
      HighlightModeImpl.fromInt(highlightMode),
    ));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}
