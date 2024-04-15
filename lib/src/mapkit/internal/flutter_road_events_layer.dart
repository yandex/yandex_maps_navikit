import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/mapkit/road_events_layer/style_provider.dart'
    as mapkit_road_events_layer_style_provider;

part 'flutter_road_events_layer.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'InternalDefaultStyleProvider.getNativePtr',
    toPlatform:
        '(val) => InternalDefaultStyleProvider.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class InternalDefaultStyleProvider implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_InternalDefaultStyleProvider_free.cast());

  /// @nodoc
  InternalDefaultStyleProvider.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  InternalDefaultStyleProvider.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(InternalDefaultStyleProvider? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static InternalDefaultStyleProvider? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return InternalDefaultStyleProvider.fromNativePtr(ptr);
  }

  core.bool provideStyle(
    mapkit_road_events_layer_style_provider
        .RoadEventsLayerRoadEventStylingProperties
        readEventStylingProperties,
    mapkit_road_events_layer_style_provider.RoadEventsLayerRoadEventStyle
        style, {
    required core.bool isNightMode,
    required core.double scaleFactor,
  }) {
    return _DefaultStyleProvider_provideStyle(
      ptr,
      mapkit_road_events_layer_style_provider
              .RoadEventsLayerRoadEventStylingProperties
          .getNativePtr(readEventStylingProperties),
      isNightMode,
      scaleFactor,
      mapkit_road_events_layer_style_provider.RoadEventsLayerRoadEventStyle
          .getNativePtr(style),
    );
  }

  mapkit_road_events_layer_style_provider.RoadEventsLayerHighlightCircleStyle?
      provideHighlightCircleStyle(
    mapkit_road_events_layer_style_provider.RoadEventsLayerHighlightMode
        highlightMode, {
    required core.bool isNightMode,
  }) {
    return mapkit_road_events_layer_style_provider
            .RoadEventsLayerHighlightCircleStyle
        .fromPointer(_DefaultStyleProvider_provideHighlightCircleStyle(
      ptr,
      isNightMode,
      mapkit_road_events_layer_style_provider.RoadEventsLayerHighlightMode
          .toInt(highlightMode),
    ));
  }
}

final _InternalDefaultStyleProvider_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_internal_InternalDefaultStyleProvider_free');

final core.bool Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    core.bool,
    core.double,
    ffi
        .Pointer<ffi.Void>) _DefaultStyleProvider_provideStyle = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Bool Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
                    ffi.Bool, ffi.Float, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_internal_InternalDefaultStyleProvider_provideStyle')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    core.bool,
    core
        .int) _DefaultStyleProvider_provideHighlightCircleStyle = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>, ffi.Bool, ffi.Int64)>>(
        'yandex_flutter_mapkit_internal_InternalDefaultStyleProvider_provideHighlightCircleStyle')
    .asFunction();

class InternalDefaultStyleProviderFactory {
  InternalDefaultStyleProviderFactory._();

  static InternalDefaultStyleProvider createDefaultStyleProvider() {
    return InternalDefaultStyleProvider.fromNativePtr(
        _DefaultStyleProviderFactory_createDefaultStyleProvider());
  }
}

final ffi.Pointer<ffi.Void> Function()
    _DefaultStyleProviderFactory_createDefaultStyleProvider = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_mapkit_internal_InternalDefaultStyleProviderFactory_createDefaultStyleProvider')
        .asFunction();
