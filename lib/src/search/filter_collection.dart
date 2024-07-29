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

part 'filter_collection.containers.dart';
part 'filter_collection.impl.dart';

/// Filters for search request. Use builder to setup this class.
abstract final class SearchFilterCollection implements ffi.Finalizable {
  factory SearchFilterCollection(
          core.List<core.String> booleanFilters,
          core.Map<core.String, core.List<core.String>> enumFilters,
          core.Map<core.String, SearchFilterCollectionNumberRange> rangeFilters,
          core.Map<core.String, SearchFilterCollectionDateRange> dateFilters) =>
      SearchFilterCollectionImpl(
          booleanFilters, enumFilters, rangeFilters, dateFilters);

  /// List of boolean filter ids to be set.
  core.List<core.String> get booleanFilters;

  /// Mapping of enum filter ids to list of enum value ids.
  core.Map<core.String, core.List<core.String>> get enumFilters;

  /// Mapping of range filter ids to number range.
  core.Map<core.String, SearchFilterCollectionNumberRange> get rangeFilters;

  /// Mapping of date filter ids to date range.
  core.Map<core.String, SearchFilterCollectionDateRange> get dateFilters;

  @core.override
  core.int get hashCode => core.Object.hashAll(
      [booleanFilters, enumFilters, rangeFilters, dateFilters]);

  @core.override
  core.bool operator ==(covariant SearchFilterCollection other) {
    if (core.identical(this, other)) {
      return true;
    }
    return booleanFilters == other.booleanFilters &&
        enumFilters == other.enumFilters &&
        rangeFilters == other.rangeFilters &&
        dateFilters == other.dateFilters;
  }

  @core.override
  core.String toString() {
    return "SearchFilterCollection(booleanFilters: $booleanFilters, enumFilters: $enumFilters, rangeFilters: $rangeFilters, dateFilters: $dateFilters)";
  }
}

/// Number range. Used for range filter.

final class SearchFilterCollectionNumberRange {
  /// Lower range limit.
  final core.double from;

  /// Upper range limit.
  final core.double to;

  const SearchFilterCollectionNumberRange({
    required this.from,
    required this.to,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([from, to]);

  @core.override
  core.bool operator ==(covariant SearchFilterCollectionNumberRange other) {
    if (core.identical(this, other)) {
      return true;
    }
    return from == other.from && to == other.to;
  }

  @core.override
  core.String toString() {
    return "SearchFilterCollectionNumberRange(from: $from, to: $to)";
  }
}

/// Date range. Dates are encoded as strings in YYYYMMDD format.

final class SearchFilterCollectionDateRange {
  /// Lower range limit.
  final core.String from;

  /// Upper range limit.
  final core.String to;

  const SearchFilterCollectionDateRange({
    required this.from,
    required this.to,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([from, to]);

  @core.override
  core.bool operator ==(covariant SearchFilterCollectionDateRange other) {
    if (core.identical(this, other)) {
      return true;
    }
    return from == other.from && to == other.to;
  }

  @core.override
  core.String toString() {
    return "SearchFilterCollectionDateRange(from: $from, to: $to)";
  }
}
