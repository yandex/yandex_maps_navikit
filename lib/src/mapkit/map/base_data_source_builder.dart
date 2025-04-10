import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/mapkit/images/image_url_provider.dart'
    as mapkit_images_image_url_provider;

part 'base_data_source_builder.containers.dart';
part 'base_data_source_builder.impl.dart';

abstract class BaseDataSourceBuilder implements ffi.Finalizable {
  /// The class does not retain the object in the 'urlProvider' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void setImageUrlProvider(
      mapkit_images_image_url_provider.ImagesImageUrlProvider urlProvider);

  core.bool isValid();
}
