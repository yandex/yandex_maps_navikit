part of 'flutter_navigation_layer.dart';

void _setStyleProvider(
    navigation_automotive_layer_styling_style_provider.NavigationStyleProvider
        styleProvider) {
  _FlutterNavigationLayerFactory_setStyleProvider(
      navigation_automotive_layer_styling_style_provider
          .NavigationStyleProviderImpl.getNativePtr(styleProvider));
}

navigation_automotive_layer_navigation_layer.NavigationLayer
    _createNavigationLayerWithPresetStyleProvider(
        mapkit_map_map_window.MapWindow mapWindow,
        mapkit_road_events_layer_style_provider.RoadEventsLayerStyleProvider
            roadEventsLayerStyleProvider,
        navigation_automotive_navigation.Navigation navigation) {
  final result =
      _FlutterNavigationLayerFactory_createNavigationLayerWithPresetStyleProvider(
          mapkit_map_map_window.MapWindowImpl.getNativePtr(mapWindow),
          mapkit_road_events_layer_style_provider
                  .RoadEventsLayerStyleProviderImpl
              .getNativePtr(roadEventsLayerStyleProvider),
          navigation_automotive_navigation.NavigationImpl.getNativePtr(
              navigation));
  return navigation_automotive_layer_navigation_layer.NavigationLayerImpl
      .fromNativePtr(result);
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
