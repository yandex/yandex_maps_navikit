import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_navikit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;

part 'version.containers.dart';
part 'version.impl.dart';

/// Dot-separated version string. Alphabetical symbols are ignored
/// without errors.
///
/// Examples of correct versions: "1.2.3", "2.0.0-2", "2014.04.25", "42".

final class Version {
  /// Version string.
  final core.String str;

  const Version({
    required this.str,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([str]);

  @core.override
  core.bool operator ==(covariant Version other) {
    if (core.identical(this, other)) {
      return true;
    }
    return str == other.str;
  }

  @core.override
  core.String toString() {
    return "Version(str: $str)";
  }
}
