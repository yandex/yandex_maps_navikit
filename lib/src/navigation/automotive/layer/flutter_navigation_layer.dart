import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:yandex_maps_navikit/src/mapkit/map/map_window.dart'
    as mapkit_map_map_window;
import 'package:yandex_maps_navikit/src/mapkit/road_events_layer/road_events_layer.dart'
    as mapkit_road_events_layer_road_events_layer;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/navigation_layer.dart'
    as navigation_automotive_layer_navigation_layer;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/styling/style_provider.dart'
    as navigation_automotive_layer_styling_style_provider;
import 'package:yandex_maps_navikit/src/navigation/automotive/navigation.dart'
    as navigation_automotive_navigation;

class FlutterNavigationLayerFactory {
  FlutterNavigationLayerFactory._();

  /// Set
  /// [navigation_automotive_layer_styling_style_provider.NavigationStyleProvider].
  ///
  /// The class maintains a strong reference to the object in
  /// the 'styleProvider' parameter until it (the class) is invalidated.
  static void setStyleProvider(
      navigation_automotive_layer_styling_style_provider.NavigationStyleProvider
          styleProvider) {
    _FlutterNavigationLayerFactory_setStyleProvider(
        navigation_automotive_layer_styling_style_provider
            .NavigationStyleProvider.getNativePtr(styleProvider));
  }

  /// Adds navigation layer on the map using the StyleProvider set by
  /// [FlutterNavigationLayerFactory.setStyleProvider].
  static navigation_automotive_layer_navigation_layer.NavigationLayer
      createNavigationLayerWithPresetStyleProvider(
          mapkit_map_map_window.MapWindow mapWindow,
          mapkit_road_events_layer_road_events_layer.RoadEventsLayer
              roadEventsLayer,
          navigation_automotive_navigation.Navigation navigation) {
    return navigation_automotive_layer_navigation_layer.NavigationLayer
        .fromNativePtr(
            _FlutterNavigationLayerFactory_createNavigationLayerWithPresetStyleProvider(
                mapkit_map_map_window.MapWindow.getNativePtr(mapWindow),
                mapkit_road_events_layer_road_events_layer.RoadEventsLayer
                    .getNativePtr(roadEventsLayer),
                navigation_automotive_navigation.Navigation.getNativePtr(
                    navigation)));
  }
}

final void Function(
    ffi.Pointer<
        ffi.Void>) _FlutterNavigationLayerFactory_setStyleProvider = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_FlutterNavigationLayerFactory_setStyleProvider')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _FlutterNavigationLayerFactory_createNavigationLayerWithPresetStyleProvider =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_layer_FlutterNavigationLayerFactory_createNavigationLayerWithPresetStyleProvider')
        .asFunction();
