import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/image/image_provider.dart'
    as image_provider;
import 'package:yandex_maps_navikit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_navikit/src/mapkit/map/icon_style.dart'
    as mapkit_map_icon_style;
import 'package:yandex_maps_navikit/src/search/search_layer/search_result_item.dart'
    as search_search_layer_search_result_item;

part 'assets_provider.containers.dart';
part 'assets_provider.impl.dart';

/// Possible placemark icon types
enum PlacemarkIconType {
  /// No icon. This type will never be passed to `AssetsProvider` methods.
  None,

  /// Dust.
  Dust,

  /// Dust, search result is already visited.
  DustVisited,

  /// Icon.
  Icon,

  /// Icon, search result is already visited.
  IconVisited,

  /// One-line label to the left of the icon.
  LabelShortLeft,

  /// One-line label to the right of the icon.
  LabelShortRight,

  /// Detailed label to the left of the icon.
  LabelDetailedLeft,

  /// Detailed label to the right of the icon.
  LabelDetailedRight,

  /// Search result is selected.
  Selected,
  ;
}

/// Size of the icon

final class Size {
  /// Width.
  final core.double width;

  /// Height.
  final core.double height;

  const Size({
    required this.width,
    required this.height,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([width, height]);

  @core.override
  core.bool operator ==(covariant Size other) {
    if (core.identical(this, other)) {
      return true;
    }
    return width == other.width && height == other.height;
  }

  @core.override
  core.String toString() {
    return "Size(width: $width, height: $height)";
  }
}

/// Interface for providing images, image sizes and icon styles to the
/// search layer. Call with static_cast<int>(PlacemarkIconType) in all
/// methods.
abstract class AssetsProvider {
  /// Returns an image for certain placemark type with given search result
  core.Future<image_provider.ImageProvider> image(
      search_search_layer_search_result_item.SearchResultItem searchResult,
      core.int placemarkIconType);

  /// Returns the size of the icon of certain placemark type with given
  /// search result
  Size size(
      search_search_layer_search_result_item.SearchResultItem searchResult,
      core.int placemarkIconType);

  /// Returns the icon style for certain placemark type with given search
  /// result. If obtainAdIcons mode is enabled, IconStyle.anchor will be
  /// replaced for advertisement pins
  mapkit_map_icon_style.IconStyle iconStyle(
      search_search_layer_search_result_item.SearchResultItem searchResult,
      core.int placemarkIconType);

  /// Returns `true` if provider is able to provide images for given search
  /// result and placemark types of `LabelShortLeft`, `LabelShortRight`,
  /// `LabelDetailedLeft` and `LabelDetailedRight`. If `false` is returned
  /// then no label would be shown for this search result.
  core.bool canProvideLabels(
      search_search_layer_search_result_item.SearchResultItem searchResult);
}
