part of 'request_point_listener.dart';

final class _RequestPointListenerWrapper implements ffi.Finalizable {
  _RequestPointListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_RequestPointListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension RequestPointListenerImpl on RequestPointListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<RequestPointListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<RequestPointListener, _RequestPointListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(RequestPointListener obj) {
    final ptr = _RequestPointListener_new(
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _RequestPointListener_onRequestPointsChanged),
        ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Uint32)>(_RequestPointListener_onRequestPointTap));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _RequestPointListenerWrapper(ptr);
    _RequestPointListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(RequestPointListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _RequestPointListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_RequestPointListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint32)>>)
    _RequestPointListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi
                        .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint32)>>)>>('yandex_flutter_navigation_automotive_layer_RequestPointListener_new')
        .asFunction(isLeaf: true);

final _RequestPointListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_RequestPointListener_free');
void _RequestPointListener_onRequestPointsChanged(ffi.Pointer<ffi.Void> _ptr) {
  final listener = RequestPointListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRequestPointsChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _RequestPointListener_onRequestPointTap(
    ffi.Pointer<ffi.Void> _ptr, core.int requestPointIndex) {
  final listener = RequestPointListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRequestPointTap(requestPointIndex);
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}
