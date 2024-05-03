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

part 'flutter_navigation_layer.impl.dart';

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
    _setStyleProvider(
      styleProvider,
    );
  }

  /// Adds navigation layer on the map using the StyleProvider set by
  /// [FlutterNavigationLayerFactory.setStyleProvider].
  static navigation_automotive_layer_navigation_layer.NavigationLayer
      createNavigationLayerWithPresetStyleProvider(
          mapkit_map_map_window.MapWindow mapWindow,
          mapkit_road_events_layer_road_events_layer.RoadEventsLayer
              roadEventsLayer,
          navigation_automotive_navigation.Navigation navigation) {
    return _createNavigationLayerWithPresetStyleProvider(
      mapWindow,
      roadEventsLayer,
      navigation,
    );
  }
}
