part of 'road_event.dart';

@bindings_annotations.ContainerData(
    toNative: 'RoadEventImpl.getNativePtr',
    toPlatform: '(val) => RoadEventImpl.fromPointer(val, needFree: false)',
    platformType: 'RoadEvent')
final class RoadEventImpl implements RoadEvent {
  RoadEventImpl(
      core.String id,
      mapkit_geometry_point.Point position,
      core.List<mapkit_road_events_event_tag.RoadEventsEventTag> tags,
      core.String caption,
      core.bool isInFuture)
      : this.fromNativePtr(_RoadEvent_init(
            to_native.toNativeString(id),
            mapkit_geometry_point.PointImpl.toNative(position),
            mapkit_road_events_event_tag.RoadEventsEventTagContainerExtension
                .toNativeVector(tags),
            to_native.toNativeString(caption),
            isInFuture));

  @core.override
  late final id = to_platform.toPlatformString(_RoadEvent_get_id(_ptr));
  @core.override
  late final position =
      mapkit_geometry_point.PointImpl.fromNative(_RoadEvent_get_position(_ptr));
  @core.override
  late final tags =
      mapkit_road_events_event_tag.RoadEventsEventTagContainerExtension
          .toPlatformVector(_RoadEvent_get_tags(_ptr));
  @core.override
  late final caption =
      to_platform.toPlatformString(_RoadEvent_get_caption(_ptr));
  @core.override
  late final isInFuture = _RoadEvent_get_isInFuture(_ptr);

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer = ffi.NativeFinalizer(_RoadEvent_free.cast());

  RoadEventImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(RoadEvent? obj) {
    return (obj as RoadEventImpl?)?._ptr ?? ffi.nullptr;
  }

  static RoadEvent? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr ? null : RoadEventImpl.fromNativePtr(ptr);
  }

  static RoadEvent? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        RoadEventImpl.fromNativePtr(ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _RoadEvent_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEvent_free');

final ffi.Pointer<ffi.Void> Function(
        native_types.NativeString,
        mapkit_geometry_point.PointNative,
        ffi.Pointer<ffi.Void>,
        native_types.NativeString,
        core.bool) _RoadEvent_init =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        native_types.NativeString,
                        mapkit_geometry_point.PointNative,
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeString,
                        ffi.Bool)>>(
            'yandex_flutter_mapkit_road_events_layer_RoadEvent_init')
        .asFunction(isLeaf: true);

final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _RoadEvent_get_id = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_road_events_layer_RoadEvent_get_id')
        .asFunction(isLeaf: true);
final mapkit_geometry_point.PointNative Function(ffi.Pointer<ffi.Void>)
    _RoadEvent_get_position = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_point.PointNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_road_events_layer_RoadEvent_get_position')
        .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _RoadEvent_get_tags = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_road_events_layer_RoadEvent_get_tags')
        .asFunction(isLeaf: true);
final native_types.NativeString Function(ffi.Pointer<ffi.Void>)
    _RoadEvent_get_caption = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeString Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_road_events_layer_RoadEvent_get_caption')
        .asFunction(isLeaf: true);
final core.bool Function(ffi.Pointer<ffi.Void>) _RoadEvent_get_isInFuture = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEvent_get_isInFuture')
    .asFunction(isLeaf: true);
