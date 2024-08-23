part of 'balloon_view_listener.dart';

final class _BalloonViewListenerWrapper implements ffi.Finalizable {
  _BalloonViewListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_BalloonViewListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension BalloonViewListenerImpl on BalloonViewListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<BalloonViewListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<BalloonViewListener, _BalloonViewListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(BalloonViewListener obj) {
    final ptr = _BalloonViewListener_new(
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
            _BalloonViewListener_onBalloonViewsChanged),
        ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Void>)>(_BalloonViewListener_onBalloonViewTap),
        ffi.Pointer.fromFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
            _BalloonViewListener_onBalloonVisibilityChanged),
        ffi.Pointer.fromFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
            _BalloonViewListener_onBalloonContentChanged));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _BalloonViewListenerWrapper(ptr);
    _BalloonViewListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(BalloonViewListener? obj) {
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
        .int) _BalloonViewListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_BalloonViewListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _BalloonViewListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Void Function(
                                ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<
                        ffi
                        .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_navigation_automotive_layer_BalloonViewListener_new')
        .asFunction(isLeaf: true);

final _BalloonViewListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_BalloonViewListener_free');
void _BalloonViewListener_onBalloonViewsChanged(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> route) {
  final listener = BalloonViewListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onBalloonViewsChanged(
        navigation_automotive_layer_route_view.RouteViewImpl.fromNativePtr(
            route));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _BalloonViewListener_onBalloonViewTap(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> balloon) {
  final listener = BalloonViewListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onBalloonViewTap(
        navigation_automotive_layer_balloon_view.BalloonViewImpl.fromNativePtr(
            balloon));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _BalloonViewListener_onBalloonVisibilityChanged(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> balloon) {
  final listener = BalloonViewListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onBalloonVisibilityChanged(
        navigation_automotive_layer_balloon_view.BalloonViewImpl.fromNativePtr(
            balloon));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _BalloonViewListener_onBalloonContentChanged(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> balloon) {
  final listener = BalloonViewListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onBalloonContentChanged(
        navigation_automotive_layer_balloon_view.BalloonViewImpl.fromNativePtr(
            balloon));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}
