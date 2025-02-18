import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_navikit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/mapkit/geometry/direction.dart'
    as mapkit_geometry_direction;
import 'package:yandex_maps_navikit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_navikit/src/mapkit/money.dart' as mapkit_money;

part 'route_point_object_metadata.containers.dart';
part 'route_point_object_metadata.impl.dart';

/// An entrance to a building
abstract final class SearchEntrance implements ffi.Finalizable {
  factory SearchEntrance(core.String? name, mapkit_geometry_point.Point point,
          mapkit_geometry_direction.Direction? direction) =>
      SearchEntranceImpl(name, point, direction);

  SearchEntrance._();

  core.String? get name;
  mapkit_geometry_point.Point get point;
  mapkit_geometry_direction.Direction? get direction;

  @core.override
  core.int get hashCode => core.Object.hashAll([name, point, direction]);

  @core.override
  core.bool operator ==(covariant SearchEntrance other) {
    if (core.identical(this, other)) {
      return true;
    }
    return name == other.name &&
        point == other.point &&
        direction == other.direction;
  }

  @core.override
  core.String toString() {
    return "SearchEntrance(name: $name, point: $point, direction: $direction)";
  }
}

abstract final class SearchParkingAttributes implements ffi.Finalizable {
  factory SearchParkingAttributes(core.String? orgURI,
          mapkit_money.TaxiMoney? firstHourPrice, core.int? placesCount) =>
      SearchParkingAttributesImpl(orgURI, firstHourPrice, placesCount);

  SearchParkingAttributes._();

  /// Parking organization URI. For example, parking zone or any toll area
  /// or inside building parking.
  ///
  core.String? get orgURI;

  /// Price of the first hour.
  ///
  mapkit_money.TaxiMoney? get firstHourPrice;

  /// Maximum number of parking places (capacity).
  ///
  core.int? get placesCount;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([orgURI, firstHourPrice, placesCount]);

  @core.override
  core.bool operator ==(covariant SearchParkingAttributes other) {
    if (core.identical(this, other)) {
      return true;
    }
    return orgURI == other.orgURI &&
        firstHourPrice == other.firstHourPrice &&
        placesCount == other.placesCount;
  }

  @core.override
  core.String toString() {
    return "SearchParkingAttributes(orgURI: $orgURI, firstHourPrice: $firstHourPrice, placesCount: $placesCount)";
  }
}
