part of 'address_book_manager.dart';

final class _AddressBookListenerWrapper implements ffi.Finalizable {
  _AddressBookListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_AddressBookListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension AddressBookListenerImpl on AddressBookListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<AddressBookListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<AddressBookListener, _AddressBookListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(AddressBookListener obj) {
    final ptr = _AddressBookListener_new(
        ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Bool)>(_AddressBookListener_onLoaded),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _AddressBookListener_onDropped),
        ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Bool)>(_AddressBookListener_onRefreshSuccess),
        ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Void>)>(_AddressBookListener_onRefreshError));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _AddressBookListenerWrapper(ptr);
    _AddressBookListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(AddressBookListener? obj) {
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
        .int) _AddressBookListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_mapkit_address_book_AddressBookListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<
            ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _AddressBookListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_mapkit_address_book_AddressBookListener_new')
        .asFunction(isLeaf: true);

final _AddressBookListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_address_book_AddressBookListener_free');
void _AddressBookListener_onLoaded(
    ffi.Pointer<ffi.Void> _ptr, core.bool hasAddressBook) {
  final listener = AddressBookListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onLoaded(hasAddressBook);
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _AddressBookListener_onDropped(ffi.Pointer<ffi.Void> _ptr) {
  final listener = AddressBookListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onDropped();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _AddressBookListener_onRefreshSuccess(
    ffi.Pointer<ffi.Void> _ptr, core.bool changed) {
  final listener = AddressBookListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRefreshSuccess(changed);
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _AddressBookListener_onRefreshError(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> error) {
  final listener = AddressBookListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRefreshError(runtime_error.ErrorImpl.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

@bindings_annotations.WeakInterface('mapkit.address_book.AddressBookManager')
@bindings_annotations.ContainerData(
    toNative: 'AddressBookManagerImpl.getNativePtr',
    toPlatform:
        '(val) => AddressBookManagerImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'AddressBookManager')
class AddressBookManagerImpl implements AddressBookManager, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_AddressBookManager_free.cast());

  /// @nodoc
  AddressBookManagerImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  AddressBookManagerImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory AddressBookManagerImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(AddressBookManager? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as AddressBookManagerImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _AddressBookManager_check(ptr);
  }

  @internal

  /// @nodoc
  static AddressBookManager? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return AddressBookManagerImpl.fromNativePtr(ptr);
  }

  @core.override
  mapkit_address_book_address_book.AddressBook get addressBook {
    final result = _AddressBookManager_get_addressBook(ptr);
    exception.checkCallResult();
    return mapkit_address_book_address_book.AddressBookImpl.fromNativePtr(
        result);
  }

  void addListener(AddressBookListener addressBookListener) {
    _AddressBookManager_addListener(
        ptr, AddressBookListenerImpl.getNativePtr(addressBookListener));
    exception.checkCallResult();
  }

  void removeListener(AddressBookListener addressBookListener) {
    _AddressBookManager_removeListener(
        ptr, AddressBookListenerImpl.getNativePtr(addressBookListener));
    exception.checkCallResult();
  }

  void requestRefresh() {
    _AddressBookManager_requestRefresh(ptr);
    exception.checkCallResult();
  }
}

final _AddressBookManager_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_address_book_AddressBookManager_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _AddressBookManager_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_address_book_AddressBookManager_check')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _AddressBookManager_get_addressBook = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_address_book_AddressBookManager_get_addressBook')
    .asFunction();

final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _AddressBookManager_addListener = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_address_book_AddressBookManager_addListener')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _AddressBookManager_removeListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_address_book_AddressBookManager_removeListener')
    .asFunction();
final void Function(
    ffi
        .Pointer<ffi.Void>) _AddressBookManager_requestRefresh = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_address_book_AddressBookManager_requestRefresh')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _AddressBookManager_set =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
            'yandex_flutter_mapkit_address_book_AddressBookManager_set_')
        .asFunction(isLeaf: true);

AddressBookManager _getAddressBookManager() {
  final result = _AddressBookManagerFactory_getAddressBookManager();
  return AddressBookManagerImpl.fromNativePtr(result);
}

final ffi.Pointer<ffi.Void> Function()
    _AddressBookManagerFactory_getAddressBookManager = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_mapkit_address_book_AddressBookManagerFactory_getAddressBookManager')
        .asFunction();
