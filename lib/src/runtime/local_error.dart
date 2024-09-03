import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/async.dart'
    show runWithBlockUi;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/runtime/error.dart' as runtime_error;

part 'local_error.containers.dart';
part 'local_error.impl.dart';

/// Local error has occurred.
abstract class LocalError implements runtime_error.Error, ffi.Finalizable {
  /// Usable only in [runWithBlockUi] or listener handlers.
  core.bool isValid();
}

/// Disk is full.
abstract class DiskFullError implements LocalError, ffi.Finalizable {
  /// Usable only in [runWithBlockUi] or listener handlers.
  core.bool isValid();
}

/// Disk is corrupted.
abstract class DiskCorruptError implements LocalError, ffi.Finalizable {
  /// Usable only in [runWithBlockUi] or listener handlers.
  core.bool isValid();
}

/// The application does not have the required write permissions.
abstract class DiskWriteAccessError
    implements DiskCorruptError, ffi.Finalizable {
  /// Usable only in [runWithBlockUi] or listener handlers.
  core.bool isValid();
}
