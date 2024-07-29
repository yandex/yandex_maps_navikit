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
import 'package:yandex_maps_navikit/src/mapkit/screen_types.dart'
    as mapkit_screen_types;

part 'company_tap_info.containers.dart';
part 'company_tap_info.impl.dart';

abstract final class CompanyTapInfo implements ffi.Finalizable {
  factory CompanyTapInfo(
          core.String permalink, mapkit_screen_types.ScreenPoint screenPoint) =>
      CompanyTapInfoImpl(permalink, screenPoint);

  /// Permalink of the company which icon or text was tapped. The permalink
  /// may be used to show company info page
  core.String get permalink;

  /// The screen position of the company tapped icon. The screenPoint may
  /// be useful in positioning company info page
  mapkit_screen_types.ScreenPoint get screenPoint;

  @core.override
  core.int get hashCode => core.Object.hashAll([permalink, screenPoint]);

  @core.override
  core.bool operator ==(covariant CompanyTapInfo other) {
    if (core.identical(this, other)) {
      return true;
    }
    return permalink == other.permalink && screenPoint == other.screenPoint;
  }

  @core.override
  core.String toString() {
    return "CompanyTapInfo(permalink: $permalink, screenPoint: $screenPoint)";
  }
}
