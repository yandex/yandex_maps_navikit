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

part 'errors.containers.dart';
part 'errors.impl.dart';

/// The panorama was not found.
abstract class PanoramaNotFoundError
    implements runtime_error.Error, ffi.Finalizable {
  /// Usable only in [runWithBlockUi] or listener handlers.
  core.bool isValid();
}
