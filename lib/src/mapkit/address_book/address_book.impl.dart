part of 'address_book.dart';

@bindings_annotations.ContainerData(
    toNative: 'AddressRecordImpl.getNativePtr',
    toPlatform: '(val) => AddressRecordImpl.fromPointer(val, needFree: false)',
    platformType: 'AddressRecord')
final class AddressRecordImpl extends AddressRecord {
  AddressRecordImpl(
      core.String title,
      core.String? description,
      core.String? comment,
      core.String? address,
      mapkit_geometry_geometry.Geometry? geometry,
      core.String? uri)
      : this.fromNativePtr(_AddressRecord_init(
            to_native.toNativeString(title),
            to_native.toNativePtrString(description),
            to_native.toNativePtrString(comment),
            to_native.toNativePtrString(address),
            mapkit_geometry_geometry.GeometryImpl.toPointer(geometry),
            to_native.toNativePtrString(uri)));

  @core.override
  late final title =
      to_platform.toPlatformString(_AddressRecord_get_title(_ptr));
  @core.override
  late final description = to_platform
      .toPlatformFromPointerString(_AddressRecord_get_description(_ptr));
  @core.override
  late final comment =
      to_platform.toPlatformFromPointerString(_AddressRecord_get_comment(_ptr));
  @core.override
  late final address =
      to_platform.toPlatformFromPointerString(_AddressRecord_get_address(_ptr));
  @core.override
  late final geometry = mapkit_geometry_geometry.GeometryImpl.fromPointer(
      _AddressRecord_get_geometry(_ptr));
  @core.override
  late final uri =
      to_platform.toPlatformFromPointerString(_AddressRecord_get_uri(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_AddressRecord_free.cast());

  AddressRecordImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(AddressRecord? obj) {
    return (obj as AddressRecordImpl?)?._ptr ?? ffi.nullptr;
  }

  static AddressRecord? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : AddressRecordImpl.fromNativePtr(ptr);
  }

  static AddressRecord? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = AddressRecordImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _AddressRecord_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_mapkit_address_book_AddressRecord_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>) _AddressRecord_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_address_book_AddressRecord_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _AddressRecord_get_title = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_address_book_AddressRecord_get_title')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _AddressRecord_get_description = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_address_book_AddressRecord_get_description')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _AddressRecord_get_comment = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_address_book_AddressRecord_get_comment')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _AddressRecord_get_address = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_address_book_AddressRecord_get_address')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _AddressRecord_get_geometry = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_address_book_AddressRecord_get_geometry')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _AddressRecord_get_uri = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_address_book_AddressRecord_get_uri')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'AddressCollectionImpl.getNativePtr',
    toPlatform:
        '(val) => AddressCollectionImpl.fromPointer(val, needFree: false)',
    platformType: 'AddressCollection')
final class AddressCollectionImpl extends AddressCollection {
  AddressCollectionImpl(core.String title, core.String? description,
      core.List<AddressRecord> records)
      : this.fromNativePtr(_AddressCollection_init(
            to_native.toNativeString(title),
            to_native.toNativePtrString(description),
            AddressRecordContainerExtension.toNativeVector(records)));

  @core.override
  late final title =
      to_platform.toPlatformString(_AddressCollection_get_title(_ptr));
  @core.override
  late final description = to_platform
      .toPlatformFromPointerString(_AddressCollection_get_description(_ptr));
  @core.override
  late final records = AddressRecordContainerExtension.toPlatformVector(
      _AddressCollection_get_records(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_AddressCollection_free.cast());

  AddressCollectionImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(AddressCollection? obj) {
    return (obj as AddressCollectionImpl?)?._ptr ?? ffi.nullptr;
  }

  static AddressCollection? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : AddressCollectionImpl.fromNativePtr(ptr);
  }

  static AddressCollection? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = AddressCollectionImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _AddressCollection_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_mapkit_address_book_AddressCollection_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _AddressCollection_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(native_types.NativeString,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_address_book_AddressCollection_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _AddressCollection_get_title = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_address_book_AddressCollection_get_title')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _AddressCollection_get_description = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_address_book_AddressCollection_get_description')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _AddressCollection_get_records = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_address_book_AddressCollection_get_records')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'AddressBookImpl.getNativePtr',
    toPlatform: '(val) => AddressBookImpl.fromPointer(val, needFree: false)',
    platformType: 'AddressBook')
final class AddressBookImpl extends AddressBook {
  AddressBookImpl(
      AddressRecord? home,
      AddressRecord? work,
      core.List<AddressRecord> favorites,
      core.List<AddressCollection> customCollections)
      : this.fromNativePtr(_AddressBook_init(
            AddressRecordImpl.getNativePtr(home),
            AddressRecordImpl.getNativePtr(work),
            AddressRecordContainerExtension.toNativeVector(favorites),
            AddressCollectionContainerExtension.toNativeVector(
                customCollections)));

  @core.override
  late final home =
      AddressRecordImpl.fromOptionalPtr(_AddressBook_get_home(_ptr));
  @core.override
  late final work =
      AddressRecordImpl.fromOptionalPtr(_AddressBook_get_work(_ptr));
  @core.override
  late final favorites = AddressRecordContainerExtension.toPlatformVector(
      _AddressBook_get_favorites(_ptr));
  @core.override
  late final customCollections =
      AddressCollectionContainerExtension.toPlatformVector(
          _AddressBook_get_customCollections(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_AddressBook_free.cast());

  AddressBookImpl.fromNativePtr(this._ptr) : super._() {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(AddressBook? obj) {
    return (obj as AddressBookImpl?)?._ptr ?? ffi.nullptr;
  }

  static AddressBook? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : AddressBookImpl.fromNativePtr(ptr);
  }

  static AddressBook? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        AddressBookImpl.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _AddressBook_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_mapkit_address_book_AddressBook_free');

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _AddressBook_init = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_address_book_AddressBook_init')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _AddressBook_get_home = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_address_book_AddressBook_get_home')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _AddressBook_get_work = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_address_book_AddressBook_get_work')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _AddressBook_get_favorites = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_address_book_AddressBook_get_favorites')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _AddressBook_get_customCollections = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_address_book_AddressBook_get_customCollections')
    .asFunction(isLeaf: true);
