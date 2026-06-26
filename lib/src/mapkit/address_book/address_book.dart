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
import 'package:yandex_maps_navikit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;

part 'address_book.containers.dart';
part 'address_book.impl.dart';

abstract final class AddressRecord implements ffi.Finalizable {
  factory AddressRecord(
          core.String title,
          core.String? description,
          core.String? comment,
          core.String? address,
          mapkit_geometry_geometry.Geometry? geometry,
          core.String? uri) =>
      AddressRecordImpl(title, description, comment, address, geometry, uri);

  AddressRecord._();

  core.String get title;
  core.String? get description;
  core.String? get comment;
  core.String? get address;
  mapkit_geometry_geometry.Geometry? get geometry;
  core.String? get uri;

  @core.override
  core.int get hashCode => core.Object.hashAll(
      [title, description, comment, address, geometry, uri]);

  @core.override
  core.bool operator ==(covariant AddressRecord other) {
    if (core.identical(this, other)) {
      return true;
    }
    return title == other.title &&
        description == other.description &&
        comment == other.comment &&
        address == other.address &&
        geometry == other.geometry &&
        uri == other.uri;
  }

  @core.override
  core.String toString() {
    return "AddressRecord(title: $title, description: $description, comment: $comment, address: $address, geometry: $geometry, uri: $uri)";
  }
}

abstract final class AddressCollection implements ffi.Finalizable {
  factory AddressCollection(core.String title, core.String? description,
          core.List<AddressRecord> records) =>
      AddressCollectionImpl(title, description, records);

  AddressCollection._();

  core.String get title;
  core.String? get description;
  core.List<AddressRecord> get records;

  @core.override
  core.int get hashCode => core.Object.hashAll([title, description, records]);

  @core.override
  core.bool operator ==(covariant AddressCollection other) {
    if (core.identical(this, other)) {
      return true;
    }
    return title == other.title &&
        description == other.description &&
        records == other.records;
  }

  @core.override
  core.String toString() {
    return "AddressCollection(title: $title, description: $description, records: $records)";
  }
}

abstract final class AddressBook implements ffi.Finalizable {
  factory AddressBook(
          AddressRecord? home,
          AddressRecord? work,
          core.List<AddressRecord> favorites,
          core.List<AddressCollection> customCollections) =>
      AddressBookImpl(home, work, favorites, customCollections);

  AddressBook._();

  AddressRecord? get home;
  AddressRecord? get work;
  core.List<AddressRecord> get favorites;
  core.List<AddressCollection> get customCollections;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([home, work, favorites, customCollections]);

  @core.override
  core.bool operator ==(covariant AddressBook other) {
    if (core.identical(this, other)) {
      return true;
    }
    return home == other.home &&
        work == other.work &&
        favorites == other.favorites &&
        customCollections == other.customCollections;
  }

  @core.override
  core.String toString() {
    return "AddressBook(home: $home, work: $work, favorites: $favorites, customCollections: $customCollections)";
  }
}
