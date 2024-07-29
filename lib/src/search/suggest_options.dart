import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;

part 'suggest_options.containers.dart';
part 'suggest_options.impl.dart';

/// Bitmask for requested suggest types.
final class SuggestType {
  /// Default value: server-defined types are returned.
  static const Unspecified = SuggestType(0);

  /// Toponyms.
  static const Geo = SuggestType(1);

  /// Companies.
  static const Biz = SuggestType(1 << 1);

  /// Mass transit routes.
  static const Transit = SuggestType(1 << 2);

  const SuggestType(this.value);

  final core.int value;

  SuggestType operator |(SuggestType other) {
    return SuggestType(value | other.value);
  }

  SuggestType operator &(SuggestType other) {
    return SuggestType(value & other.value);
  }

  SuggestType operator ~() {
    return SuggestType(~value);
  }

  @core.override
  core.int get hashCode => value;

  @core.override
  core.bool operator ==(covariant SuggestType other) {
    return value == other.value;
  }

  @core.override
  core.String toString() {
    return "SuggestType(value: ${value.toRadixString(16)})";
  }
}

/// Struct to fine-tune suggest request.

final class SuggestOptions {
  /// The suggest type can be one of [SuggestType] values or their bitwise
  /// 'OR' combination. If suggestType is not initialized, it means to use
  /// server-defined types.
  final SuggestType suggestTypes;

  /// The server uses the user position to calculate the distance from the
  /// user to suggest results.
  ///
  final mapkit_geometry_point.Point? userPosition;

  /// Enable word-by-word suggestion items.
  final core.bool suggestWords;

  /// Strictly limit the output and keep only objects that fall within the
  /// window. The window is advisory in nature and doesn't impose strict
  /// restrictions on search results, helping to select the most relevant
  /// hints.
  final core.bool strictBounds;

  const SuggestOptions({
    this.suggestTypes = SuggestType.Unspecified,
    this.userPosition,
    this.suggestWords = false,
    this.strictBounds = false,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll(
      [suggestTypes, userPosition, suggestWords, strictBounds]);

  @core.override
  core.bool operator ==(covariant SuggestOptions other) {
    if (core.identical(this, other)) {
      return true;
    }
    return suggestTypes == other.suggestTypes &&
        userPosition == other.userPosition &&
        suggestWords == other.suggestWords &&
        strictBounds == other.strictBounds;
  }

  @core.override
  core.String toString() {
    return "SuggestOptions(suggestTypes: $suggestTypes, userPosition: $userPosition, suggestWords: $suggestWords, strictBounds: $strictBounds)";
  }
}
