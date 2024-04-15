import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/weak_map/weak_map.dart'
    as weak_map;

/// @nodoc
class _OfflineCacheRegionListenerWrapper implements ffi.Finalizable {
  _OfflineCacheRegionListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_OfflineCacheRegionListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

/// Listener to handle region information.
/// @attention This feature is not available in the free MapKit version.
abstract class OfflineCacheRegionListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<OfflineCacheRegionListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<OfflineCacheRegionListener,
      _OfflineCacheRegionListenerWrapper?>();

  /// Region state was changed.
  void onRegionStateChanged(core.int regionId);

  /// Progress of specific region download was updated.
  void onRegionProgress(core.int regionId);

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(
      OfflineCacheRegionListener obj) {
    final ptr = _OfflineCacheRegionListener_new(
        ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Uint32)>(_OfflineCacheRegionListener_onRegionStateChanged),
        ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Uint32)>(_OfflineCacheRegionListener_onRegionProgress));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _OfflineCacheRegionListenerWrapper(ptr);
    _OfflineCacheRegionListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(OfflineCacheRegionListener? obj) {
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
        .int) _OfflineCacheRegionListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_mapkit_offline_cache_OfflineCacheRegionListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi
            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint32)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint32)>>)
    _OfflineCacheRegionListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint32)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint32)>>)>>(
            'yandex_flutter_mapkit_offline_cache_OfflineCacheRegionListener_new')
        .asFunction(isLeaf: true);

final _OfflineCacheRegionListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_offline_cache_OfflineCacheRegionListener_free');
void _OfflineCacheRegionListener_onRegionStateChanged(
    ffi.Pointer<ffi.Void> _ptr, core.int regionId) {
  final listener = OfflineCacheRegionListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRegionStateChanged(regionId);
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _OfflineCacheRegionListener_onRegionProgress(
    ffi.Pointer<ffi.Void> _ptr, core.int regionId) {
  final listener = OfflineCacheRegionListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRegionProgress(regionId);
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}
