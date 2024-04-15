import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:yandex_maps_navikit/src/mapkit/map/map_window.dart'
    as mapkit_map_map_window;
import 'package:yandex_maps_navikit/src/mapkit/road_events_layer/road_events_layer.dart'
    as mapkit_road_events_layer_road_events_layer;
import 'package:yandex_maps_navikit/src/mapkit/road_events_layer/style_provider.dart'
    as mapkit_road_events_layer_style_provider;

class FlutterRoadEventsLayerFactory {
  FlutterRoadEventsLayerFactory._();

  /// Set
  /// [mapkit_road_events_layer_style_provider.RoadEventsLayerStyleProvider]
  ///
  /// The class maintains a strong reference to the object in
  /// the 'styleProvider' parameter until it (the class) is invalidated.
  static void setRoadEventsStyleProvider(
      mapkit_road_events_layer_style_provider.RoadEventsLayerStyleProvider
          styleProvider) {
    _FlutterRoadEventsLayerFactory_setRoadEventsStyleProvider(
        mapkit_road_events_layer_style_provider.RoadEventsLayerStyleProvider
            .getNativePtr(styleProvider));
  }

  /// Creates the
  /// [mapkit_road_events_layer_road_events_layer.RoadEventsLayer] that
  /// will draw road events on the route using the StyleProvider set by
  /// [FlutterRoadEventsLayerFactory.setRoadEventsStyleProvider]
  ///
  /// [mapWindow] Map window to attach road events layer
  static mapkit_road_events_layer_road_events_layer.RoadEventsLayer
      createRouteRoadEventsLayerWithPresetStyleProvider(
          mapkit_map_map_window.MapWindow mapWindow) {
    return mapkit_road_events_layer_road_events_layer.RoadEventsLayer.fromNativePtr(
        _FlutterRoadEventsLayerFactory_createRouteRoadEventsLayerWithPresetStyleProvider(
            mapkit_map_map_window.MapWindow.getNativePtr(mapWindow)));
  }
}

final void Function(
    ffi.Pointer<
        ffi
        .Void>) _FlutterRoadEventsLayerFactory_setRoadEventsStyleProvider = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_FlutterRoadEventsLayerFactory_setRoadEventsStyleProvider')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _FlutterRoadEventsLayerFactory_createRouteRoadEventsLayerWithPresetStyleProvider =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_FlutterRoadEventsLayerFactory_createRouteRoadEventsLayerWithPresetStyleProvider')
        .asFunction();
