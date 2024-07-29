import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;

part 'padding.containers.dart';
part 'padding.impl.dart';

/// Logo padding class.

final class LogoPadding {
  /// Defines horizontal padding.
  final core.int horizontalPadding;

  /// Defines vertical padding.
  final core.int verticalPadding;

  const LogoPadding({
    required this.horizontalPadding,
    required this.verticalPadding,
  });

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([horizontalPadding, verticalPadding]);

  @core.override
  core.bool operator ==(covariant LogoPadding other) {
    if (core.identical(this, other)) {
      return true;
    }
    return horizontalPadding == other.horizontalPadding &&
        verticalPadding == other.verticalPadding;
  }

  @core.override
  core.String toString() {
    return "LogoPadding(horizontalPadding: $horizontalPadding, verticalPadding: $verticalPadding)";
  }
}
