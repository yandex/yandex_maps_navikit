import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_navikit/src/mapkit/address_book/address_book.dart'
    as mapkit_address_book_address_book;
import 'package:yandex_maps_navikit/src/runtime/error.dart' as runtime_error;

part 'address_book_manager.containers.dart';
part 'address_book_manager.impl.dart';

abstract class AddressBookListener {
  /// Called when local address book copy id loaded from disk. Called
  /// immediatly for listeners added after loading.
  void onLoaded(core.bool hasAddressBook);

  /// Called when address book was dropped, usually after account changed
  void onDropped();

  /// Called after refresh successfull attempt
  void onRefreshSuccess(core.bool changed);

  /// Called if error occured on refresh attempt. This may throw subclasses
  /// of NetworkError during network loading, as well as other exceptions.
  void onRefreshError(runtime_error.Error error);
}

abstract class AddressBookManager implements ffi.Finalizable {
  mapkit_address_book_address_book.AddressBook get addressBook;

  /// The class does not retain the object in the 'addressBookListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addListener(AddressBookListener addressBookListener);

  /// The class does not retain the object in the 'addressBookListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void removeListener(AddressBookListener addressBookListener);

  /// Request to attempt to get address book from server. Refresh attempts
  /// may be throttled and ignored. Immediately after downloading from
  /// disk, the first attempt to update will be made automatically.
  void requestRefresh();

  core.bool isValid();
}

class AddressBookManagerFactory {
  AddressBookManagerFactory._();

  static AddressBookManager getAddressBookManager() {
    return _getAddressBookManager();
  }
}
