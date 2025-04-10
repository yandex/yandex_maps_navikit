import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/mapkit/layers/data_source.dart'
    as mapkit_layers_data_source;
import 'package:yandex_maps_navikit/src/mapkit/layers/layer_loaded_listener.dart'
    as mapkit_layers_layer_loaded_listener;

part 'data_source_layer.containers.dart';
part 'data_source_layer.impl.dart';

abstract class DataSourceLayer implements ffi.Finalizable {
  /// Manages visibility of the layer.
  core.bool get active;
  set active(core.bool val);

  /// Clears all cached tiles and starts new requests for tiles that are
  /// displayed.
  void clear();

  /// Applies JSON style transformation to the layer. Replaces previous
  /// styling with the specified ID (if such exists). Stylings are applied
  /// in an ascending order. Set to empty string to clear previous styling
  /// with the specified ID. Returns true if the style was successfully
  /// parsed and false otherwise. If the returned value is false, the
  /// current style remains unchanged.
  core.bool setStyle({
    required core.int id,
    required core.String style,
  });

  /// Resets all JSON style transformations applied to the layer.
  void resetStyles();

  /// Sets layer loaded listener.
  ///
  /// The class does not retain the object in the 'layerLoadedListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void setLayerLoadedListener(
      mapkit_layers_layer_loaded_listener.LayerLoadedListener?
          layerLoadedListener);

  /// Removes the data source layer from the parent layer. The object
  /// becomes invalid after that.
  void remove();

  /// Sets data source listener. Use it to invalidate data source.
  /// Temporary solution until https://st.yandex-team.ru/MAPSMOBCORE-20531
  /// is done
  ///
  /// The class does not retain the object in the 'dataSourceListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void setDataSourceListener(
      mapkit_layers_data_source.DataSourceListener? dataSourceListener);

  core.bool isValid();
}
